import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';
import 'serious_observation.dart';
part 'triage_response.g.dart';

abstract class TriageResponse
    implements Built<TriageResponse, TriageResponseBuilder> {
  @BuiltValueField(wireName: 'triage_level')
  TriageLevel? get triageLevel;
  BuiltList<SeriousObservation>? get serious;
  @BuiltValueField(wireName: 'root_cause')
  String? get rootCause;
  @BuiltValueField(wireName: 'teleconsultation_applicable')
  bool? get teleconsultationApplicable;

  TriageResponse._();

  factory TriageResponse([void Function(TriageResponseBuilder) updates]) =
      _$TriageResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TriageResponse.serializer, this));
  }

  static TriageResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TriageResponse.serializer, json.decode(jsonString));
  }

  static Serializer<TriageResponse> get serializer =>
      _$triageResponseSerializer;
}
