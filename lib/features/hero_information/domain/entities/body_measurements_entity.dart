import 'package:equatable/equatable.dart';

class BodyMeasurementsEntity extends Equatable {
  final int? chest;
  final int? waist;
  final int? hip;
  final int? rigthArm;
  final int? leftArm;
  final int? rightThigh;
  final int? leftThigh;

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
