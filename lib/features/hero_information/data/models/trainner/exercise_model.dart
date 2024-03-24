
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/exercise_entity.dart';

class ExerciseModel extends ExerciseEntity {
  const ExerciseModel({
    required super.name,
    required super.sets,
    required super.repetitions,
    required super.weight,
  });

  factory ExerciseModel.fromMap(Map<String, dynamic> map) {
    return ExerciseModel(
      name: map['name'],
      sets: map['sets'],
      repetitions: map['repetitions'],
      weight: map['weight'],
    );
  }
}
