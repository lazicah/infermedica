import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'category.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';

part 'condition_details.g.dart';

abstract class ConditionDetails
    implements Built<ConditionDetails, ConditionDetailsBuilder> {
  @BuiltValueField(wireName: 'icd10_code')
  String? get icd10Code;
  Category? get category;
  Prevalence? get prevalence;
  Severity? get severity;
  Acuteness? get acuteness;
  @BuiltValueField(wireName: 'triage_level')
  TriageLevel? get triageLevel;
  String? get hint;

  ConditionDetails._();

  factory ConditionDetails([void Function(ConditionDetailsBuilder) updates]) =
      _$ConditionDetails;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ConditionDetails.serializer, this));
  }

  static ConditionDetails? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ConditionDetails.serializer, json.decode(jsonString));
  }

  static Serializer<ConditionDetails> get serializer =>
      _$conditionDetailsSerializer;
}
