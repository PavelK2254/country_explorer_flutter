import 'package:bloc/bloc.dart';
import 'package:country_explorer/data/api/graphql_repository.dart';
import 'package:country_explorer/data/graphql/queries.dart';
import 'package:country_explorer/data/model/country.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'country_screen_state.dart';

class CountryScreenCubit extends Cubit<CountryScreenState> {
  final GraphQLRepository _graphQLRepository;
  late ObservableQuery observableQuery;
  CountryScreenCubit(this._graphQLRepository) : super(CountryScreenInitial());

  void listenToQueryEvents(String code) {
    _initQueryObserver(code);
    observableQuery.stream.listen((QueryResult result) {
      if (result.hasException) {
        emit(CountryScreenError(result.exception.toString()));
      } else if (result.isLoading) {
        emit(CountryScreenLoading());
      } else {
        final Country country =
            Country.fromJson(result.data!['country'] as Map<String, dynamic>);
        emit(CountryLoadedState(country));
      }
    });
    observableQuery.fetchResults();
  }

  void _initQueryObserver(String code) {
    observableQuery = _graphQLRepository.client.watchQuery(
      WatchQueryOptions(
        fetchPolicy: FetchPolicy.networkOnly,
        document: gql(getCountry(code)),
      ),
    );
  }
}
