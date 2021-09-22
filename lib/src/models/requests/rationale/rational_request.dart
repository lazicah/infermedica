import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';
import '../../evidence.dart';
import '../../age_request_model.dart';

part 'rational_request.g.dart';

abstract class RationaleRequest
    implements Built<RationaleRequest, RationaleRequestBuilder> {
  SexType get sex;
  AgeRequestModel get age;
  BuiltList<Evidence>? get evidence;
  JsonObject? get extras;
  @BuiltValueField(wireName: 'evaluated_at')
  String? get evaluatedAt;


  RationaleRequest._();

  factory RationaleRequest({required SexType sex,
          required AgeRequestModel age,
          List<Evidence>? evidence,
          Map<String, dynamic>? extras,
          String? evaluatedAt,}) =>
      _$RationaleRequest._( sex: sex,
        age: age,
        evidence: BuiltList(evidence!),
        extras: JsonObject(extras),
        evaluatedAt: evaluatedAt,);

  String toJson() {
    return json
        .encode(serializers.serializeWith(RationaleRequest.serializer, this));
  }

  static RationaleRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RationaleRequest.serializer, json.decode(jsonString));
  }

  static Serializer<RationaleRequest> get serializer =>
      _$rationaleRequestSerializer;
}
