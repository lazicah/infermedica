import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';

part 'observation_mention.g.dart';

abstract class ObservationMention
    implements Built<ObservationMention, ObservationMentionBuilder> {
  String get id; //observation id ,
  String get name; //observation name ,
  @BuiltValueField(wireName: 'common_name')
  String? get commonName; // observation common name ,
  BuiltList<int>? get positions;
  String get orth;
  @BuiltValueField(wireName: 'choice_id')
  ChoiceId get choiceId;
  @BuiltValueField(wireName: 'head_position')
  int get headPosition;

  ObservationMention._();

  factory ObservationMention(
          [void Function(ObservationMentionBuilder) updates]) =
      _$ObservationMention;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ObservationMention.serializer, this));
  }

  static ObservationMention? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ObservationMention.serializer, json.decode(jsonString));
  }

  static Serializer<ObservationMention> get serializer =>
      _$observationMentionSerializer;
}
