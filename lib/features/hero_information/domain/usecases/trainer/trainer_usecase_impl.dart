import 'package:dartz/dartz.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/trainer.dart';
import 'package:hero_flutter/features/hero_information/domain/repositories/trainer/trainer_repository.dart';
import 'package:hero_flutter/features/hero_information/domain/usecases/trainer/trainer_usecase.dart';
import 'package:hero_flutter/shared/exception/failure.dart';

class TrainerUsecaseImpl implements TrainerUsecase {
  final TrainerRepository _trainerRepository;

  TrainerUsecaseImpl({required TrainerRepository trainerRepository})
      : _trainerRepository = trainerRepository;

  @override
  Future<Either<Failure, Trainer>> call() {
    return _trainerRepository.fetchTrainer();
  }
}
