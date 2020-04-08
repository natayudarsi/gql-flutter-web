import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:reverse_test/common/network/network_check.dart';
import 'package:reverse_test/common/errors/no_connection_errors.dart';
// import 'package:reverse_test/data/employee/datasources/employee_gql_datasource.dart';

import 'package:reverse_test/data/employee/datasources/employee_gql_datasource.dart';
import 'package:reverse_test/domain/employee/entities/employee_entity.dart';
import 'package:reverse_test/domain/employee/repository/employee_repository.dart';

@lazySingleton
@injectable
class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeGqlDatasource employeeDatasource;
  // final EmployeeGqlDatasource employeeGqlDatasource;
  final NetworkCheck networkCheck;

  EmployeeRepositoryImpl({
    @required this.employeeDatasource,
    @required this.networkCheck,
  });

  @override
  Future<EmployeeEntity> getEmployeeByEmail({@required String email}) async {
    if (await networkCheck.isOnline()) {
      final employee = await employeeDatasource.getEmployee(email: email);
      return employee;
    } else {
      throw NoConnectionError();
    }
  }
}
