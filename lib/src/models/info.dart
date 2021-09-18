import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';

part 'info.g.dart';

abstract class Info implements Built<Info, InfoBuilder> {
  @BuiltValueField(wireName: 'api_version')
  String get apiVersion;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;
  @BuiltValueField(wireName: 'conditions_count')
  int get conditionsCount;
  @BuiltValueField(wireName: 'symptoms_count')
  int get symptomsCount;
  @BuiltValueField(wireName: 'risk_factors_count')
  int get riskFactorsCount ;
  @BuiltValueField(wireName: 'lab_tests_count')
  int get labTestsCount;

  Info._();

  factory Info([void Function(InfoBuilder) updates]) = _$Info;

  String toJson() {
    return json.encode(serializers.serializeWith(Info.serializer, this));
  }

  static Info? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Info.serializer, json.decode(jsonString));
  }

  static Serializer<Info> get serializer => _$infoSerializer;
}
