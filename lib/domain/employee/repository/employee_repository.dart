import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:reverse_test/data/employee/repository/employee_repository.dart';
import 'package:reverse_test/domain/employee/entities/employee_entity.dart';

@Bind.toType(EmployeeRepositoryImpl)
@injectable
abstract class EmployeeRepository {
  Future<EmployeeEntity> getEmployeeByEmail({@required String email});
}
