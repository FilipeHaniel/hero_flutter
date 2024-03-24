// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:hero_flutter/features/hero_information/domain/entities/trainer/exercise_entity.dart';

class TrainingEntity extends Equatable {
  final double daysPerWeek;
  final List<ExerciseEntity> exercises;

  const TrainingEntity({
    required this.daysPerWeek,
    required this.exercises,
  });

  @override
  List<Object?> get props => [daysPerWeek, exercises];
}
