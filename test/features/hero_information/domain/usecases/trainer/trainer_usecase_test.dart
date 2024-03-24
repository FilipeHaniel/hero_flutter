import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/trainer_entity.dart';
import 'package:hero_flutter/shared/exception/failure.dart';
import 'package:mocktail/mocktail.dart';
import 'package:hero_flutter/features/hero_information/domain/repositories/trainer/trainer_repository.dart';
import 'package:hero_flutter/features/hero_information/domain/usecases/trainer/trainer_usecase_impl.dart';

import '../../../../../test_values.dart';

class MockTrainerRepository extends Mock implements TrainerRepository {}

void main() {
  late MockTrainerRepository trainerRepository;
  late TrainerUsecaseImpl trainerUsecase;

  setUp(() {
    trainerRepository = MockTrainerRepository();
    trainerUsecase = TrainerUsecaseImpl(trainerRepository: trainerRepository);
  });

  group('GetTrainerUsecase', () {
    // return Trainer
    test('should return a trainer entity', () async {
      // Arrange
      when(() => trainerRepository.fetchTrainer()).thenAnswer(
          (_) async => Right<Failure, TrainerEntity>(testTrainer()));
      // Act
      final result = await trainerUsecase();
      // Expec
      expect(result, Right<Failure, TrainerEntity>(testTrainer()));
    });

    // return Failure
    test('should return a Failure', () async {
      // Arrange
      when(() => trainerRepository.fetchTrainer())
          .thenAnswer((_) async => Left<Failure, TrainerEntity>(testFailure()));
      // Act
      final result = await trainerUsecase();
      // Expec
      expect(result, Left<Failure, TrainerEntity>(testFailure()));
    });
  });
}
