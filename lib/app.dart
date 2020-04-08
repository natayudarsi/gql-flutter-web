import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:reverse_test/common/config/screen_config.dart';
import 'package:reverse_test/common/network/gql_client.dart';
import 'package:reverse_test/common/network/gql_provider.dart';
import 'package:reverse_test/common/routes/routes.dart';
import 'package:reverse_test/common/routes/routing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GraphQLClient _client = new GqlClient().setup();

  @override
  Widget build(BuildContext context) {
    return GqlProvider(
      client: _client,
      child: LayoutBuilder(builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          ScreenConfig().init(constraints, orientation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'PX',
            initialRoute: Routes.registerScreen,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        });
      }),
    );
  }
}
