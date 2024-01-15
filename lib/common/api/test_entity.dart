import 'package:personal/generated/json/base/json_field.dart';
import 'package:personal/generated/json/test_entity.g.dart';
import 'dart:convert';
export 'package:personal/generated/json/test_entity.g.dart';

@JsonSerializable()
class TestEntity {
	late List<String> tu;
	late List<String> huo;
	late List<String> mu;
	late List<double> shui;
	late List<String> jin;
	late double animalName;

	TestEntity();

	factory TestEntity.fromJson(Map<String, dynamic> json) => $TestEntityFromJson(json);

	Map<String, dynamic> toJson() => $TestEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}