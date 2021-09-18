import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import '../../enums/enums.dart';
import 'question_item.dart';

part 'question.g.dart';

abstract class Question implements Built<Question, QuestionBuilder> {
  QuestionType? get type;
  String get text; // question text
  BuiltList<QuestionItem> get items; // one or more observations to evaluate
  JsonObject? get extras; // additional content, like images or HTML

  Question._();

  factory Question([void Function(QuestionBuilder) updates]) = _$Question;

  String toJson() {
    return json.encode(serializers.serializeWith(Question.serializer, this));
  }

  static Question? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Question.serializer, json.decode(jsonString));
  }

  static Serializer<Question> get serializer => _$questionSerializer;
}
