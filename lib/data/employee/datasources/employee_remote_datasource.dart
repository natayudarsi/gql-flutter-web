import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import 'package:reverse_test/common/network/rest_client.dart';
import 'package:reverse_test/data/employee/models/employee_model.dart';

@Bind.toType(EmployeeRemoteDatasourceImpl)
@injectable
abstract class EmployeeRemoteDatasource {
  Future<Employee> getEmployee({@required String email});
}

@lazySingleton
@injectable
class EmployeeRemoteDatasourceImpl implements EmployeeRemoteDatasource {
  final RestClient client;

  EmployeeRemoteDatasourceImpl({@required this.client});

  @override
  Future<Employee> getEmployee({@required String email}) async {
    final Response response = await client.get('/employee/$email');

    return Employee.fromJson(response.data);
  }
}
