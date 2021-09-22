import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';
import '../../age_request_model.dart';
import '../../evidence.dart';

part 'diagnosis_request.g.dart';

abstract class DiagnosisRequest
    implements Built<DiagnosisRequest, DiagnosisRequestBuilder> {
  SexType get sex;
  AgeRequestModel get age;
  BuiltList<Evidence>? get evidence;
  JsonObject? get extras;
  @BuiltValueField(wireName: 'evaluated_at')
  String? get evaluatedAt;

  DiagnosisRequest._();

  factory DiagnosisRequest(
          {required SexType sex,
          required AgeRequestModel age,
          List<Evidence>? evidence,
          Map<String, dynamic>? extras,
          String? evaluatedAt}) =>
      _$DiagnosisRequest._(
        sex: sex,
        age: age,
        evidence: BuiltList(evidence!),
        extras: JsonObject(extras),
        evaluatedAt: evaluatedAt,
      );

  String toJson() {
    return json
        .encode(serializers.serializeWith(DiagnosisRequest.serializer, this));
  }

  static DiagnosisRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DiagnosisRequest.serializer, json.decode(jsonString));
  }

  static Serializer<DiagnosisRequest> get serializer =>
      _$diagnosisRequestSerializer;
}
