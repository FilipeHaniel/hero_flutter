import 'package:hero_flutter/features/hero_information/domain/entities/trainer/body_measurements_entity.dart';

class BodyMeasurementsModel extends BodyMeasurementsEntity {
  const BodyMeasurementsModel({
    required super.chest,
    required super.waist,
    required super.hips,
    required super.rigthArm,
    required super.leftArm,
    required super.rightThigh,
    required super.leftThigh,
  });

  factory BodyMeasurementsModel.fromMap(Map<String, dynamic> map) {
    return BodyMeasurementsModel(
      chest: map['chest'],
      waist: map['waist'],
      hips: map['hips'],
      rigthArm: map['rigthArm'],
      leftArm: map['leftArm'],
      rightThigh: map['rightThigh'],
      leftThigh: map['leftThigh'],
    );
  }
}
