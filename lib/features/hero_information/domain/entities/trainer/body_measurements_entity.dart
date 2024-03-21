import 'package:equatable/equatable.dart';

class BodyMeasurementsEntity extends Equatable {
  final double? chest;
  final double? waist;
  final double? hip;
  final double? rigthArm;
  final double? leftArm;
  final double? rightThigh;
  final double? leftThigh;

  const BodyMeasurementsEntity({
    this.chest,
    this.waist,
    this.hip,
    this.rigthArm,
    this.leftArm,
    this.rightThigh,
    this.leftThigh,
  });

  @override
  List<Object?> get props =>
      [chest, waist, hip, rigthArm, rightThigh, leftThigh];
}
