import 'package:dartz/dartz.dart';

import '../../../../core/structure_utils/errors/failures.dart';
import '../../../../core/structure_utils/usecases/usecase.dart';

class CalculatorUseCase implements UseCase<void, NoParams> {
// TODO: implement the output of your UseCase


@override
Future<Either<Failure, void>> call(NoParams params) {
// TODO: implement call
throw UnimplementedError();
}
}

class CalculatorNoParams {
// TODO: implement your Params
const CalculatorNoParams();
}