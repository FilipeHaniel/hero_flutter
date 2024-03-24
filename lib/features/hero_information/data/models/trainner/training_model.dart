import 'package:hero_flutter/features/hero_information/data/models/trainner/exercise_model.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/exercise_entity.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/training_entity.dart';

class TrainingModel extends TrainingEntity {
  const TrainingModel({
    required super.daysPerWeek,
    required super.exercises,
  });

  factory TrainingModel.fromMap(Map<String, dynamic> map) {
    List<ExerciseEntity> exercisesList = [];
    final exerciseMaps = map['exercises'];

    exercisesList = exerciseMaps
        .map((exerciseMap) => ExerciseModel.fromMap(exerciseMap))
        .toList();

    return TrainingModel(
      daysPerWeek: map['daysPerWeek'],
      exercises: exercisesList,
    );
  }
}
