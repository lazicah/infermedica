import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';
import 'rationale_param.dart';

part 'rationale_response.g.dart';

abstract class RationaleResponse
    implements Built<RationaleResponse, RationaleResponseBuilder> {
  RationaleType get type;
  @BuiltValueField(wireName: 'observation_params')
  BuiltList<RationaleParam>? get observationParams;
  @BuiltValueField(wireName: 'condition_params')
  BuiltList<RationaleParam>? get conditionParams;



  
  RationaleResponse._();

  factory RationaleResponse([void Function(RationaleResponseBuilder) updates]) =
      _$RationaleResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(RationaleResponse.serializer, this));
  }

  static RationaleResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RationaleResponse.serializer, json.decode(jsonString));
  }

  static Serializer<RationaleResponse> get serializer =>
      _$rationaleResponseSerializer;
}
