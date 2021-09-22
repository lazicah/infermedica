import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'enums/enums.dart';
import 'serializers.dart';

part 'evidence.g.dart';

abstract class Evidence implements Built<Evidence, EvidenceBuilder> {
  String get id; // id of observation or condition ,
  @BuiltValueField(wireName: 'choice_id')
  ChoiceId get choiceId;
  @BuiltValueField(wireName: 'observed_at')
  String? get observedAt;
  SourceType? get source;

  Evidence._();

  factory Evidence(
          {required String id,
          required ChoiceId choiceId,
          String? observedAt,
          SourceType? source}) =>
      _$Evidence._(
        id: id,
        choiceId: choiceId,
        observedAt: observedAt,
        source: source,
      );

  String toJson() {
    return json.encode(serializers.serializeWith(Evidence.serializer, this));
  }

  static Evidence? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Evidence.serializer, json.decode(jsonString));
  }

  static Serializer<Evidence> get serializer => _$evidenceSerializer;
}
