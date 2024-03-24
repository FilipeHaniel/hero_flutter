import 'package:hero_flutter/features/hero_information/domain/entities/trainer/body_measurements_entity.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/exercise_entity.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/trainer_entity.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/training_entity.dart';
import 'package:hero_flutter/shared/exception/failure.dart';

TrainerEntity Function() testTrainer = () => const TrainerEntity(
      name: 'João da Silva',
      age: 30,
      gender: 'masculino',
      height: 1.75,
      weight: 75,
      goal: 'ganho de massa muscular',
      training: TrainingEntity(
        daysPerWeek: 4,
        exercises: [
          ExerciseEntity(name: 'Supino', sets: 4, repetitions: 10, weight: 80),
          ExerciseEntity(
              name: 'Agachamento', sets: 3, repetitions: 12, weight: 100),
          ExerciseEntity(
              name: 'Rosca direta', sets: 3, repetitions: 12, weight: 20),
        ],
      ),
      bodyMeasurementsEntity: BodyMeasurementsEntity(
        chest: 100,
        waist: 80,
        hip: 95,
        rigthArm: 35,
        leftArm: 35,
        rightThigh: 55,
        leftThigh: 55,
      ),
    );

Failure Function() testFailure =
    () => const Failure(message: 'Failure to fetch Trainer');
