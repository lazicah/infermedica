import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'serious_observation.g.dart';

abstract class SeriousObservation
    implements Built<SeriousObservation, SeriousObservationBuilder> {
  String get id;
  String get name;
  @BuiltValueField(wireName: 'common_name')
  String? get commonName;
  @BuiltValueField(wireName: 'is_emergency')
  bool? get isEmergency;

  SeriousObservation._();

  factory SeriousObservation(
          [void Function(SeriousObservationBuilder) updates]) =
      _$SeriousObservation;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SeriousObservation.serializer, this));
  }

  static SeriousObservation? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SeriousObservation.serializer, json.decode(jsonString));
  }

  static Serializer<SeriousObservation> get serializer =>
      _$seriousObservationSerializer;
}
