import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'explanation_evidence.g.dart';

abstract class ExplanationEvidence
    implements Built<ExplanationEvidence, ExplanationEvidenceBuilder> {
  String get id; // observation id ,
  String get name; // observation name ,
  @BuiltValueField(wireName: 'common_name')
  String? get commonName; // observation common name

  ExplanationEvidence._();

  factory ExplanationEvidence(
          [void Function(ExplanationEvidenceBuilder) updates]) =
      _$ExplanationEvidence;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ExplanationEvidence.serializer, this));
  }

  static ExplanationEvidence? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ExplanationEvidence.serializer, json.decode(jsonString));
  }

  static Serializer<ExplanationEvidence> get serializer =>
      _$explanationEvidenceSerializer;
}
