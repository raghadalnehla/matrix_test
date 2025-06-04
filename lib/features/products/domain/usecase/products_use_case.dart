import 'package:dartz/dartz.dart';
import 'package:matrix_erp_test/features/products/domain/entities/products_entity.dart';
import 'package:matrix_erp_test/features/products/domain/repositories/products_repository.dart';

import '../../../../core/structure_utils/errors/failures.dart';
import '../../../../core/structure_utils/usecases/usecase.dart';

class GetProductsUseCase implements UseCase<List<ProductEntity>, NoParams> {
  ProductsRepository repository;

  GetProductsUseCase(this.repository);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) async {
    return repository.getProducts();
  }
}
