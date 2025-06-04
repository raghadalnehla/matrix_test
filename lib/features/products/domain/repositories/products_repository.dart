import 'package:dartz/dartz.dart';

import '../../../../core/structure_utils/errors/failures.dart';
import '../entities/products_entity.dart';

abstract class ProductsRepository {
  Future<Either<Failure, List<ProductEntity>>> getProducts();
}
