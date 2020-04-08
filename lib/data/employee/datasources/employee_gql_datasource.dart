import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:reverse_test/data/employee/models/employee_model.dart';
import 'package:reverse_test/presentation/screens/register/graphql_operations/queries/px_employee.dart'
    as queries;

@Bind.toType(EmployeeGqlDatasourceImpl)
@injectable
abstract class EmployeeGqlDatasource {
  Future<Employee> getEmployee({@required String email});
}

@lazySingleton
@injectable
class EmployeeGqlDatasourceImpl implements EmployeeGqlDatasource {
  final GraphQLClient graphqlClient;

  EmployeeGqlDatasourceImpl({@required this.graphqlClient});

  @override
  Future<Employee> getEmployee({String email}) async {
    final WatchQueryOptions options = WatchQueryOptions(
      documentNode: gql(queries.pxEmployeeByEmail),
      variables: <String, dynamic>{
        'email': email,
      },
      fetchResults: true,
    );

    final QueryResult queryResults = await graphqlClient.query(options);
    final List jsonResults = queryResults.data['result']['employee'] as List;

    return Employee.fromJson(jsonResults.first);
  }
}
