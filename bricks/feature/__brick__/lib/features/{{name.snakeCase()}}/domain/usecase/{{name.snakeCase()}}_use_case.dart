import 'package:dartz/dartz.dart';

import '../../../../core/structure_utils/errors/failures.dart';
import '../../../../core/structure_utils/usecases/usecase.dart';

class {{name.pascalCase()}}UseCase implements UseCase<void, {{feature_name.pascalCase()}}NoParams> {
// TODO: implement the output of your {{feature_name.pascalCase()}}UseCase


@override
Future<Either<Failure, void>> call({{feature_name.pascalCase()}}Params params) {
// TODO: implement call
throw UnimplementedError();
}
}

class {{name.pascalCase()}}NoParams {
// TODO: implement your {{feature_name.pascalCase()}}Params
const {{name.pascalCase()}}NoParams();
}