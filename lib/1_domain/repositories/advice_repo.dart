import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/1_domain/entities/advice_entity.dart';

import '../failures/failures.dart';

abstract class AdviceRepo {
  Future<Either<Failure, AdviceEntity>> getAdviceFromDatasource();
}
