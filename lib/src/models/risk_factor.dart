import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import 'enums/enums.dart';
part 'risk_factor.g.dart';

abstract class RiskFactor implements Built<RiskFactor, RiskFactorBuilder> {
  String get id;
  String get name;
  @BuiltValueField(wireName: 'common_name')
  String? get commonName;
  @BuiltValueField(wireName: 'sex_filter')
  SexFilter get sexFilter;
  String? get category;
  JsonObject? get extras;
  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;
  @BuiltValueField(wireName: 'image_source')
  String? get imageSource;
  RiskFactor._();

  factory RiskFactor([void Function(RiskFactorBuilder) updates]) = _$RiskFactor;

  String toJson() {
    return json.encode(serializers.serializeWith(RiskFactor.serializer, this));
  }

  static RiskFactor? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RiskFactor.serializer, json.decode(jsonString));
  }

  static Serializer<RiskFactor> get serializer => _$riskFactorSerializer;
}
