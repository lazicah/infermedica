import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import '../../enums/enums.dart';
part 'choice.g.dart';

abstract class Choice implements Built<Choice, ChoiceBuilder> {
  ChoiceId get id;
  String get label;

  Choice._();

  factory Choice([void Function(ChoiceBuilder) updates]) = _$Choice;

  String toJson() {
    return json.encode(serializers.serializeWith(Choice.serializer, this));
  }

  static Choice? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Choice.serializer, json.decode(jsonString));
  }

  static Serializer<Choice> get serializer => _$choiceSerializer;
}
