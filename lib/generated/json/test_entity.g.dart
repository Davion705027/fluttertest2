import 'package:personal/generated/json/base/json_convert_content.dart';
import 'package:personal/common/api/test_entity.dart';

TestEntity $TestEntityFromJson(Map<String, dynamic> json) {
  final TestEntity testEntity = TestEntity();
  final List<String>? tu = (json['tu'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tu != null) {
    testEntity.tu = tu;
  }
  final List<String>? huo = (json['huo'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (huo != null) {
    testEntity.huo = huo;
  }
  final List<String>? mu = (json['mu'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (mu != null) {
    testEntity.mu = mu;
  }
  final List<double>? shui = (json['shui'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<double>(e) as double).toList();
  if (shui != null) {
    testEntity.shui = shui;
  }
  final List<String>? jin = (json['jin'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (jin != null) {
    testEntity.jin = jin;
  }
  final double? animalName = jsonConvert.convert<double>(json['animalName']);
  if (animalName != null) {
    testEntity.animalName = animalName;
  }
  return testEntity;
}

Map<String, dynamic> $TestEntityToJson(TestEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tu'] = entity.tu;
  data['huo'] = entity.huo;
  data['mu'] = entity.mu;
  data['shui'] = entity.shui;
  data['jin'] = entity.jin;
  data['animalName'] = entity.animalName;
  return data;
}

extension TestEntityExtension on TestEntity {
  TestEntity copyWith({
    List<String>? tu,
    List<String>? huo,
    List<String>? mu,
    List<double>? shui,
    List<String>? jin,
    double? animalName,
  }) {
    return TestEntity()
      ..tu = tu ?? this.tu
      ..huo = huo ?? this.huo
      ..mu = mu ?? this.mu
      ..shui = shui ?? this.shui
      ..jin = jin ?? this.jin
      ..animalName = animalName ?? this.animalName;
  }
}