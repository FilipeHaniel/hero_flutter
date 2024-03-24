// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/body_measurements_entity.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/training_entity.dart';

class TrainerEntity extends Equatable {
  final String name;
  final double age;
  final String gender;
  final double height;
  final double weight;
  final String goal;
  final TrainingEntity training;
  final BodyMeasurementsEntity bodyMeasurementsEntity;

  const TrainerEntity({
    required this.name,
    required this.age,
    required this.gender,
    required this.height,
    required this.weight,
    required this.goal,
    required this.training,
    required this.bodyMeasurementsEntity,
  });

  @override
  List<Object?> get props => [
        name,
        age,
        gender,
        height,
        weight,
        goal,
        training,
        bodyMeasurementsEntity
      ];
}
