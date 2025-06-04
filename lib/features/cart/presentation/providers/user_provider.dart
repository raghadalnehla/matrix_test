import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:matrix_erp_test/core/data/repositories/user_repository.dart';
import '../../../../core/data/data_source/user_local_data_source.dart';
import '../../../../core/domain/entity/user_entity.dart';
import '../../../../core/domain/repositories/user_repository.dart';
import '../../../../core/domain/usecase/get_users_usecase.dart';
import '../../../../core/structure_utils/errors/failures.dart';
import '../../../../core/structure_utils/usecases/usecase.dart';

final usersLocalDataSourceProvider = Provider<UsersLocalDataSource>((ref) {
  return UsersLocalDataSourceImpl(); // Your concrete repository implementation
});

final usersRepositoryProvider = Provider<UsersRepository>((ref) {
  final dataSource = ref.watch(usersLocalDataSourceProvider);

  return UsersRepositoryImpl(dataSource);
});

// Provider for GetUsersUseCase
final getUsersUseCaseProvider = Provider<GetUsersUseCase>((ref) {
  final repository = ref.watch(usersRepositoryProvider);
  return GetUsersUseCase(repository);
});

// Provider to fetch users (exposes the state to UI)
final usersListProvider =
    FutureProvider<Either<Failure, List<UserEntity>>>((ref) {
  final useCase = ref.watch(getUsersUseCaseProvider);
  return useCase.call(NoParams());
});
