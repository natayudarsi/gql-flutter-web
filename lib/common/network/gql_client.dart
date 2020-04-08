import 'package:injectable/injectable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:reverse_test/env.dart';

@Bind.toType(GqlClient)
@injectable
abstract class GqlClientBase {
  GraphQLClient setup();
}

@lazySingleton
@injectable
class GqlClient extends GqlClientBase {
  @override
  GraphQLClient setup() {
    final baseUrl = environment['graphqlBaseUrl'];

    final HttpLink httpLink = HttpLink(uri: '$baseUrl');
    // Handle AuthLink
    // final AuthLink authLink = AuthLink(getToken: () => 'Bearer ${token}');

    // Handle ErrorLink
    // final ErrorLink errorLink = ErrorLink(
    //   errorHandler: (ErrorResponse response) {
    //     OperationException exception = response.exception;
    //     print(exception.toString());
    //   },
    // );
    final Link link = httpLink;

    return GraphQLClient(
      // cache: InMemoryCache(),
      link: link,
      // cache: NormalizedInMemoryCache(dataIdFromObject: typenameDataIdFromObject)
    );
  }
}
