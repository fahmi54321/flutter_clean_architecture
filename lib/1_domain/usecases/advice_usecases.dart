import 'package:flutter_clean_architecture/1_domain/entities/advice_entity.dart';
import 'package:flutter_clean_architecture/1_domain/failures/failures.dart';
import 'package:flutter_clean_architecture/1_domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCases {
  AdviceUseCases({required this.adviceRepo});
  final AdviceRepo adviceRepo;

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDatasource();
    // space for business logic
  }
}
