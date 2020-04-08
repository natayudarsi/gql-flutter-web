// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:reverse_test/domain/employee/usecases/employee_usecases.dart';
import 'package:reverse_test/domain/employee/repository/employee_repository.dart';
import 'package:reverse_test/data/employee/datasources/employee_gql_datasource.dart';
import 'package:reverse_test/presentation/screens/register/bloc/register_bloc.dart';
import 'package:graphql/src/graphql_client.dart';
import 'package:reverse_test/data/employee/datasources/employee_remote_datasource.dart';
import 'package:reverse_test/common/network/rest_client.dart';
import 'package:reverse_test/data/employee/repository/employee_repository.dart';
import 'package:reverse_test/common/network/gql_client.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerLazySingleton<GetEmployeeUsecase>(() =>
        GetEmployeeUsecase(employeeRepository: getIt<EmployeeRepository>()))
    ..registerFactory<EmployeeRepository>(() => EmployeeRepositoryImpl(
        employeeDatasource: getIt<EmployeeGqlDatasource>()))
    ..registerFactory<RegisterBloc>(
        () => RegisterBloc(getEmployeeUsecase: getIt<GetEmployeeUsecase>()))
    ..registerFactory<EmployeeGqlDatasource>(
        () => EmployeeGqlDatasourceImpl(graphqlClient: getIt<GraphQLClient>()))
    ..registerLazySingleton<EmployeeGqlDatasourceImpl>(
        () => EmployeeGqlDatasourceImpl(graphqlClient: getIt<GraphQLClient>()))
    ..registerFactory<EmployeeRemoteDatasource>(
        () => EmployeeRemoteDatasourceImpl(client: getIt<RestClient>()))
    ..registerLazySingleton<EmployeeRemoteDatasourceImpl>(
        () => EmployeeRemoteDatasourceImpl(client: getIt<RestClient>()))
    ..registerLazySingleton<EmployeeRepositoryImpl>(() =>
        EmployeeRepositoryImpl(
            employeeDatasource: getIt<EmployeeGqlDatasource>()))
    ..registerFactory<RestClientBase>(() => RestClient())
    ..registerLazySingleton<RestClient>(() => RestClient())
    ..registerFactory<GqlClientBase>(() => GqlClient())
    ..registerLazySingleton<GqlClient>(() => GqlClient());
}
