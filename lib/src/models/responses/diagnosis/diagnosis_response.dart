import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import 'question.dart';
import 'condition_probability.dart';
part 'diagnosis_response.g.dart';

abstract class DiagnosisResponse
    implements Built<DiagnosisResponse, DiagnosisResponseBuilder> {
  Question? get question;
  BuiltList<CondtionProbability>? get conditions;
  JsonObject? get extras;
  @BuiltValueField(wireName: 'has_emergency_evidence ')
  bool? get hasEmergencyEvidence;
  @BuiltValueField(wireName: 'should_stop ')
  bool? get shouldStop;
  DiagnosisResponse._();

  factory DiagnosisResponse([void Function(DiagnosisResponseBuilder) updates]) =
      _$DiagnosisResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(DiagnosisResponse.serializer, this));
  }

  static DiagnosisResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DiagnosisResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DiagnosisResponse> get serializer =>
      _$diagnosisResponseSerializer;
}
