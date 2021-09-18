import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'suggest_result.g.dart';

abstract class SuggestResult
    implements Built<SuggestResult, SuggestResultBuilder> {
  String get id;
  String get name;
  @BuiltValueField(wireName: 'common_name')
  String? get commonName;
  String? get explication; // explication of question ,
  BuiltList<String>? get instruction; // instruction to question

  SuggestResult._();

  factory SuggestResult([void Function(SuggestResultBuilder) updates]) =
      _$SuggestResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SuggestResult.serializer, this));
  }

  static SuggestResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SuggestResult.serializer, json.decode(jsonString));
  }

  static Serializer<SuggestResult> get serializer => _$suggestResultSerializer;
}
