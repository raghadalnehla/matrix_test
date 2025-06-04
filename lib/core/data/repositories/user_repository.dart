import "package:dartz/dartz.dart";

import "package:matrix_erp_test/core/structure_utils/errors/failures.dart";
import "../../domain/entity/user_entity.dart";
import "../../domain/repositories/user_repository.dart";
import "../data_source/user_local_data_source.dart";


class UsersRepositoryImpl implements UsersRepository {
  final UsersLocalDataSource localDataSource;

  UsersRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers() async {
    return Right(
        (await localDataSource.getUsers()).map((u) => u.toEntity()).toList());
  }
}
