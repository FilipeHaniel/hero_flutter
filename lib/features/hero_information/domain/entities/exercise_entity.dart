// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ExerciseEntity extends Equatable {
  final String? name;
  final int? sets;
  final int? repetitions;
  final int? weight;

  const ExerciseEntity({
    this.name,
    this.sets,
    this.repetitions,
    this.weight,
  });

  @override
  List<Object?> get props => [name, sets, repetitions, weight];
}
