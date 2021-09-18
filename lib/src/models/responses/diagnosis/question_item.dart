import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'choice.dart';
import 'package:infermedica/src/models/serializers.dart';

part 'question_item.g.dart';

abstract class QuestionItem
    implements Built<QuestionItem, QuestionItemBuilder> {
  String get id; // observation id
  String get name; // name or alias of observation
  BuiltList<Choice> get choices; // list of available answer choices

  QuestionItem._();

  factory QuestionItem([void Function(QuestionItemBuilder) updates]) =
      _$QuestionItem;

  String toJson() {
    return json
        .encode(serializers.serializeWith(QuestionItem.serializer, this));
  }

  static QuestionItem? fromJson(String jsonString) {
    return serializers.deserializeWith(
        QuestionItem.serializer, json.decode(jsonString));
  }

  static Serializer<QuestionItem> get serializer => _$questionItemSerializer;
}
