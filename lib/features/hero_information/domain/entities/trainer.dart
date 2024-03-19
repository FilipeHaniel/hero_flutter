// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/body_measurements_entity.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/training_entity.dart';

class Trainer extends Equatable {
  final String? name;
  final int? age;
  final String? gender;
  final int? height;
  final int? weight;
  final String? goal;
  final TrainingEntity? training;
  final BodyMeasurementsEntity? bodyMeasurementsEntity;

  const Trainer({
    this.name,
    this.age,
    this.gender,
    this.height,
    this.weight,
    this.goal,
    this.training,
    this.bodyMeasurementsEntity,
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
