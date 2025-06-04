import 'package:dartz/dartz.dart';
import 'package:matrix_erp_test/core/structure_utils/usecases/usecase.dart';
import 'package:matrix_erp_test/features/products/data/data_sources/products_local_datasource.dart';
import 'package:matrix_erp_test/features/products/domain/entities/products_entity.dart';
import 'package:matrix_erp_test/features/products/domain/usecase/products_use_case.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../core/structure_utils/errors/failures.dart';
import '../../data/repositories/products_repository_impl.dart';
import '../../domain/repositories/products_repository.dart';

final productRemoteDataSourceProvider = Provider<ProductsLocalDataSource>(
  (ref) => ProductsLocalDataSourceImpl(),
);

// Repository Provider
final productRepositoryProvider = Provider<ProductsRepository>(
  (ref) => ProductsRepositoryImpl(ref.read(productRemoteDataSourceProvider)),
);

// Use Case Provider
final getProductsProvider = Provider<GetProductsUseCase>(
  (ref) => GetProductsUseCase(ref.read(productRepositoryProvider)),
);

final productsListProvider =
    FutureProvider.autoDispose<Either<Failure, List<ProductEntity>>>(
        (ref) async {
  final useCase = ref.read(getProductsProvider);
  return await useCase(NoParams());
});
