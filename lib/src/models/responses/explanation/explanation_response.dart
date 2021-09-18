import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'explanation_evidence.dart';
import '../../serializers.dart';

part 'explanation_response.g.dart';

abstract class ExplanationResponse
    implements Built<ExplanationResponse, ExplanationResponseBuilder> {
  @BuiltValueField(wireName: 'supporting_evidence')
  BuiltList<ExplanationEvidence> get supportingEvidence;
  @BuiltValueField(wireName: 'conflicting_evidence')
  BuiltList<ExplanationEvidence> get conflictingEvidence;
  @BuiltValueField(wireName: 'unconfirmed_evidence')
  BuiltList<ExplanationEvidence> get unconfirmedEvidence;

  ExplanationResponse._();

  factory ExplanationResponse(
          [void Function(ExplanationResponseBuilder) updates]) =
      _$ExplanationResponse;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ExplanationResponse.serializer, this));
  }

  static ExplanationResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ExplanationResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ExplanationResponse> get serializer =>
      _$explanationResponseSerializer;
}
