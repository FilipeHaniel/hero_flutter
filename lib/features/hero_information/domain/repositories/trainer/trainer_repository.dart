import 'package:dartz/dartz.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/trainer_entity.dart';
import 'package:hero_flutter/shared/exception/failure.dart';

abstract class TrainerRepository {
  Future<Either<Failure, TrainerEntity>> fetchTrainer();
}
