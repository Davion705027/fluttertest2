import 'package:personal/generated/json/base/json_field.dart';
import 'package:personal/generated/json/test2_entity.g.dart';
import 'dart:convert';
export 'package:personal/generated/json/test2_entity.g.dart';

@JsonSerializable()
class Test2Entity {
	late List<String> tu;
	late List<String> huo;
	late List<String> mu;
	late List<String> shui;
	late List<String> jin;
	late double animalName;

	Test2Entity();

	factory Test2Entity.fromJson(Map<String, dynamic> json) => $Test2EntityFromJson(json);

	Map<String, dynamic> toJson() => $Test2EntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}