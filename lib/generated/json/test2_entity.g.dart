import 'package:personal/generated/json/base/json_convert_content.dart';
import 'package:personal/common/api/test2_entity.dart';

Test2Entity $Test2EntityFromJson(Map<String, dynamic> json) {
  final Test2Entity test2Entity = Test2Entity();
  final List<String>? tu = (json['tu'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tu != null) {
    test2Entity.tu = tu;
  }
  final List<String>? huo = (json['huo'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (huo != null) {
    test2Entity.huo = huo;
  }
  final List<String>? mu = (json['mu'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (mu != null) {
    test2Entity.mu = mu;
  }
  final List<String>? shui = (json['shui'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (shui != null) {
    test2Entity.shui = shui;
  }
  final List<String>? jin = (json['jin'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (jin != null) {
    test2Entity.jin = jin;
  }
  final double? animalName = jsonConvert.convert<double>(json['animalName']);
  if (animalName != null) {
    test2Entity.animalName = animalName;
  }
  return test2Entity;
}

Map<String, dynamic> $Test2EntityToJson(Test2Entity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tu'] = entity.tu;
  data['huo'] = entity.huo;
  data['mu'] = entity.mu;
  data['shui'] = entity.shui;
  data['jin'] = entity.jin;
  data['animalName'] = entity.animalName;
  return data;
}

extension Test2EntityExtension on Test2Entity {
  Test2Entity copyWith({
    List<String>? tu,
    List<String>? huo,
    List<String>? mu,
    List<String>? shui,
    List<String>? jin,
    double? animalName,
  }) {
    return Test2Entity()
      ..tu = tu ?? this.tu
      ..huo = huo ?? this.huo
      ..mu = mu ?? this.mu
      ..shui = shui ?? this.shui
      ..jin = jin ?? this.jin
      ..animalName = animalName ?? this.animalName;
  }
}