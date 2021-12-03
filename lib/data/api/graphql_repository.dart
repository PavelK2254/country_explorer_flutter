import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLRepository {
  final GraphQLClient client = GraphQLClient(
    link: HttpLink('https://countries.trevorblades.com/'),
    cache: GraphQLCache(),
  );
}
