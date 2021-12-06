import 'package:bloc_test/bloc_test.dart';
import 'package:country_explorer/data/api/graphql_repository.dart';
import 'package:country_explorer/data/model/continent.dart';
import 'package:country_explorer/data/model/country.dart';
import 'package:country_explorer/feature/main_screen/bloc/main_screen_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';

class MockGraphQLRepository extends Mock implements GraphQLRepository {
  @override
  final GraphQLClient client = GraphQLClient(
    link: HttpLink('https://countries.trevorblades.com/'),
    cache: GraphQLCache(),
  );
}

void main() {
  late MockGraphQLRepository mockGraphQLRepository;
  final List<Country> _mockCountriesList = [
    Country(code: 'test', continent: Continent(code: 'test', name: 'Test'))
  ];

  setUp(() {
    mockGraphQLRepository = MockGraphQLRepository();
  });

  blocTest(
    'Nothing is emitted on creation',
    build: () => MainScreenCubit(mockGraphQLRepository),
    expect: () => [],
  );

  /*blocTest(
    'getCountriesList emits MainScreenQueryLoaded',
    build: () {
      return MainScreenCubit(mockGraphQLRepository);
    },
    act: (MainScreenCubit bloc) => bloc.getCountriesList('ALL'),
    expect: () => [
      MainScreenLoading(),
      MainScreenQueryLoaded(_mockCountriesList, List.empty())
    ],
  );*/
}
