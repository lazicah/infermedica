import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import 'condition_details.dart';
part 'condition_probability.g.dart';

abstract class CondtionProbability
    implements Built<CondtionProbability, CondtionProbabilityBuilder> {
  String get id; // condition id
  String get name; // condition name
  @BuiltValueField(wireName: 'common_name')
  String? get commonName; // condition common name
  double get probability;
  @BuiltValueField(wireName: 'condition_details')
  ConditionDetails? get conditionDetails; // details of conditions, appears only if extra include_condition_details were applied

  CondtionProbability._();

  factory CondtionProbability(
          [void Function(CondtionProbabilityBuilder) updates]) =
      _$CondtionProbability;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CondtionProbability.serializer, this));
  }

  static CondtionProbability? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CondtionProbability.serializer, json.decode(jsonString));
  }

  static Serializer<CondtionProbability> get serializer =>
      _$condtionProbabilitySerializer;
}
