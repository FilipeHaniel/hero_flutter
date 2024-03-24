import 'package:equatable/equatable.dart';

class BodyMeasurementsEntity extends Equatable {
  final double chest;
  final double waist;
  final double hips;
  final double rigthArm;
  final double leftArm;
  final double rightThigh;
  final double leftThigh;

  const BodyMeasurementsEntity({
    required this.chest,
    required this.waist,
    required this.hips,
    required this.rigthArm,
    required this.leftArm,
    required this.rightThigh,
    required this.leftThigh,
  });

  @override
  List<Object?> get props =>
      [chest, waist, hips, rigthArm, rightThigh, leftThigh];
}
