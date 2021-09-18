import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'rationale_param.g.dart';

abstract class RationaleParam
    implements Built<RationaleParam, RationaleParamBuilder> {
  String get id; // observation or condition id ,
  String get name; // observation or condition name ,
  @BuiltValueField(wireName: 'common_name')
  String? get commonName; // observation or condition common name

  RationaleParam._();

  factory RationaleParam([void Function(RationaleParamBuilder) updates]) =
      _$RationaleParam;

  String toJson() {
    return json
        .encode(serializers.serializeWith(RationaleParam.serializer, this));
  }

  static RationaleParam? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RationaleParam.serializer, json.decode(jsonString));
  }

  static Serializer<RationaleParam> get serializer =>
      _$rationaleParamSerializer;
}
