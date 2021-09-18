import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'recommended_specialist.dart';
import '../../serializers.dart';
import '../../enums/enums.dart';

part 'specialist_response.g.dart';

abstract class SpecialistResponse
    implements Built<SpecialistResponse, SpecialistResponseBuilder> {
  @BuiltValueField(wireName: 'recommended_specialist')
  RecommendedSpecialist? get recommendedSpecialist;
  @BuiltValueField(wireName: 'recommended_channel')
  RecommendedChannel? get recommendedChannel;

  SpecialistResponse._();

  factory SpecialistResponse(
          [void Function(SpecialistResponseBuilder) updates]) =
      _$SpecialistResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SpecialistResponse.serializer, this));
  }

  static SpecialistResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SpecialistResponse.serializer, json.decode(jsonString));
  }

  static Serializer<SpecialistResponse> get serializer =>
      _$specialistResponseSerializer;
}
