import 'package:hero_flutter/features/hero_information/data/models/trainner/body_measurements_model.dart';
import 'package:hero_flutter/features/hero_information/data/models/trainner/training_model.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/trainer_entity.dart';

class TrainnerModel extends TrainerEntity {
  const TrainnerModel({
    required super.name,
    required super.age,
    required super.gender,
    required super.height,
    required super.weight,
    required super.goal,
    required super.training,
    required super.bodyMeasurementsEntity,
  });

  factory TrainnerModel.fromMap(Map<String, dynamic> map) {
    return TrainnerModel(
      name: map['name'],
      age: map['age'],
      gender: map['gender'],
      height: map['height'],
      weight: map['weight'],
      goal: map['goal'],
      training: TrainingModel.fromMap(map['training']),
      bodyMeasurementsEntity:
          BodyMeasurementsModel.fromMap(map['bodyMeasurementsEntity']),
    );
  }
}
