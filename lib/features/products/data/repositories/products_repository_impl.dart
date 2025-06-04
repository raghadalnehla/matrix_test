import "package:dartz/dartz.dart";

import "package:matrix_erp_test/core/structure_utils/errors/failures.dart";
import "package:matrix_erp_test/features/products/data/data_sources/products_local_datasource.dart";

import "package:matrix_erp_test/features/products/domain/entities/products_entity.dart";

import "../../domain/repositories/products_repository.dart";

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsLocalDataSource localDataSource;

  ProductsRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    return Right(
        (await localDataSource.getProducts()).map((p) => p.toEntity()).toList());
  }
}
