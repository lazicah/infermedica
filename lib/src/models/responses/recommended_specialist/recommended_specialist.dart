import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'recommended_specialist.g.dart';

abstract class RecommendedSpecialist
    implements Built<RecommendedSpecialist, RecommendedSpecialistBuilder> {
  String? get id; // id of specialist ,
  String? get name; // name of specialist

  RecommendedSpecialist._();

  factory RecommendedSpecialist(
          [void Function(RecommendedSpecialistBuilder) updates]) =
      _$RecommendedSpecialist;

  String toJson() {
    return json.encode(
        serializers.serializeWith(RecommendedSpecialist.serializer, this));
  }

  static RecommendedSpecialist? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RecommendedSpecialist.serializer, json.decode(jsonString));
  }

  static Serializer<RecommendedSpecialist> get serializer =>
      _$recommendedSpecialistSerializer;
}
