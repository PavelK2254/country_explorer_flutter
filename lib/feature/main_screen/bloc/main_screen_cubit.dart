import 'package:bloc/bloc.dart';
import 'package:country_explorer/data/api/graphql_repository.dart';
import 'package:country_explorer/data/graphql/queries.dart';
import 'package:country_explorer/data/model/continent.dart';
import 'package:country_explorer/data/model/country.dart';
import 'package:country_explorer/values/strings.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  final GraphQLRepository _graphQLRepository;
  late ObservableQuery observableQuery;
  late List<Country> countries;
  List<Continent> continents = [
    Continent(code: defaultContinentCode, name: 'All')
  ];
  late String selectedContinentCode;
  MainScreenCubit(this._graphQLRepository) : super(MainScreenInitial()) {
    selectedContinentCode = continents.first.code;
  }

  QueryOptions _queryOptions(String query) => QueryOptions(
        fetchPolicy: FetchPolicy.cacheAndNetwork,
        document: gql(query),
      );

  Future<void> getData() async {
    try {
      emit(MainScreenLoading());
      continents.addAll(await _getContinents());
      await getCountriesList(defaultContinentCode);
    } catch (e) {
      emit(MainScreenError(e.toString()));
    }
  }

  Future<void> getCountriesList(String continentCode) async {
    try {
      emit(MainScreenLoading());
      selectedContinentCode = continentCode;
      countries = await (continentCode == defaultContinentCode
          ? _getCountries()
          : _getCountriesFromContinent(continentCode));
      emitCountriesState();
    } catch (e) {
      emit(MainScreenError(e.toString()));
    }
  }

  Future<List<Country>> _getCountries() async {
    final QueryResult countriesRequest =
        await _graphQLRepository.client.query(_queryOptions(getCountries));
    return (countriesRequest.data!['countries'] as List)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<Continent>> _getContinents() async {
    final QueryResult continentsRequest =
        await _graphQLRepository.client.query(_queryOptions(getContinents));
    return (continentsRequest.data!['continents'] as List)
        .map((e) => Continent.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<Country>> _getCountriesFromContinent(String continentCode) async {
    final QueryResult countriesRequest = await _graphQLRepository.client
        .query(_queryOptions(getCountriesFromContinent(continentCode)));
    return (countriesRequest.data!['continent']['countries'] as List)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  void buildSearchResults(String query) {
    final List<Country> filteredCountries = countries
        .where(
          (country) => country.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    emit(MainScreenQueryLoaded(filteredCountries, continents));
  }

  void emitCountriesState() => emit(
        MainScreenQueryLoaded(
          countries,
          continents,
          selectedContinentCode: selectedContinentCode,
        ),
      );
}
