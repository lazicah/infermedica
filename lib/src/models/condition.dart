import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
import 'enums/enums.dart';
part 'condition.g.dart';

abstract class Condition implements Built<Condition, ConditionBuilder> {
  String get id;
  String get name;
  @BuiltValueField(wireName: 'common_name')
  String? get commonName;
  @BuiltValueField(wireName: 'sex_filter')
  SexFilter get sexFilter;
  BuiltList<String> get categories;
  Prevalence? get prevalence;
  Acuteness? get acuteness;
  Severity? get severity;
  JsonObject? get extras;
  @BuiltValueField(wireName: 'triage_level')
  TriageLevel? get triageLevel;
  @BuiltValueField(wireName: 'recommended_channel')
  RecommendedChannel? get recommendedChannel;

  Condition._();

  factory Condition([void Function(ConditionBuilder) updates]) = _$Condition;

  String toJson() {
    return json.encode(serializers.serializeWith(Condition.serializer, this));
  }

  static Condition? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Condition.serializer, json.decode(jsonString));
  }

  static Serializer<Condition> get serializer => _$conditionSerializer;
}
