import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

import '../../age_request_model.dart';
import '../../evidence.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';
part 'explanation_request.g.dart';

abstract class ExplanationRequest
    implements Built<ExplanationRequest, ExplanationRequestBuilder> {
  SexType get sex;
  AgeRequestModel get age;
  BuiltList<Evidence>? get evidence;
  JsonObject? get extras;
  String get target; // target condition id ,
  @BuiltValueField(wireName: 'evaluated_at')
  String? get evaluatedAt;

  ExplanationRequest._();

  factory ExplanationRequest(
          {required SexType sex,
          required AgeRequestModel age,
          required String target,
          List<Evidence>? evidence,
          Map<String, dynamic>? extras,
          String? evaluatedAt}) =>
      _$ExplanationRequest._(
          sex: sex,
          age: age,
          evidence: BuiltList(evidence!),
          extras: JsonObject(extras),
          evaluatedAt: evaluatedAt,
          target: target);

  String toJson() {
    return json
        .encode(serializers.serializeWith(ExplanationRequest.serializer, this));
  }

  static ExplanationRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ExplanationRequest.serializer, json.decode(jsonString));
  }

  static Serializer<ExplanationRequest> get serializer =>
      _$explanationRequestSerializer;
}
