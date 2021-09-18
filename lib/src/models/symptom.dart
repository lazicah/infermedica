import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import 'enums/enums.dart';
part 'symptom.g.dart';

abstract class Symptom implements Built<Symptom, SymptomBuilder> {
  String get id;
  String get name;
  @BuiltValueField(wireName: 'common_name')
  String? get commonName;
  @BuiltValueField(wireName: 'sex_filter')
  SexFilter get sexFilter;
  String? get category;
  JsonObject? get extras;
  JsonObject? get children;
  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;
  @BuiltValueField(wireName: 'image_source')
  String? get imageSource;
  @BuiltValueField(wireName: 'parent_id')
  String? get parentId; // id of parent symptom 
  @BuiltValueField(wireName: 'parent_relation')
  String? get parentRelation; // type of relation with parent symptom = ['base', 'duration', 'severity', 'character', 'exacerbating_factor', 'diminishing_factor', 'location', 'radiation']
  Symptom._();

  factory Symptom([void Function(SymptomBuilder) updates]) = _$Symptom;

  String toJson() {
    return json.encode(serializers.serializeWith(Symptom.serializer, this));
  }

  static Symptom? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Symptom.serializer, json.decode(jsonString));
  }

  static Serializer<Symptom> get serializer => _$symptomSerializer;
}
