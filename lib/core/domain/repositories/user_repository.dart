import 'package:dartz/dartz.dart';

import '../../../../core/structure_utils/errors/failures.dart';
import '../entity/user_entity.dart';

abstract class UsersRepository {
  Future<Either<Failure, List<UserEntity>>> getUsers();
}
