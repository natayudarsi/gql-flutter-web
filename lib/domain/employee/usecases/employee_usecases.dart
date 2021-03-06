import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:reverse_test/common/models/use_case.dart';
import 'package:reverse_test/domain/employee/entities/employee_entity.dart';
import 'package:reverse_test/domain/employee/repository/employee_repository.dart';

@lazySingleton
@injectable
class GetEmployeeUsecase
    implements UseCase<EmployeeEntity, Map<String, String>> {
  final EmployeeRepository employeeRepository;

  GetEmployeeUsecase({@required this.employeeRepository});

  @override
  Future<EmployeeEntity> call(Map payload) {
    return employeeRepository.getEmployeeByEmail(email: payload['email']);
  }
}
