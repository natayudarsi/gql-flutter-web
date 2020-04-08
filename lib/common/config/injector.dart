import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:connectivity/connectivity.dart';
// import 'package:dio/dio.dart';
import 'package:reverse_test/common/network/gql_client.dart';
import 'package:reverse_test/common/network/rest_client.dart';

import 'injector.iconfig.dart' as injection_config;

final getIt = GetIt.instance;

Future<void> setupInjections() async {
  getIt.registerLazySingleton(() => Connectivity());
  // getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => GqlClient().setup());
  getIt.registerLazySingleton(() => RestClient().setup());
  configure();
}

@injectableInit
void configure() => injection_config.$initGetIt();
