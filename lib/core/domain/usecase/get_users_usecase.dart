import 'package:dartz/dartz.dart';
import '../../../../core/structure_utils/errors/failures.dart';
import '../../../../core/structure_utils/usecases/usecase.dart';
import '../entity/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUsersUseCase implements UseCase<List<UserEntity>, NoParams> {
  UsersRepository repository;

  GetUsersUseCase(this.repository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) async {
    return repository.getUsers();
  }
}
