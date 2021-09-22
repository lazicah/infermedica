import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../age_request_model.dart';
import '../../enums/enums.dart';
import '../../serializers.dart';
part 'parse_request.g.dart';

abstract class ParseRequest
    implements Built<ParseRequest, ParseRequestBuilder> {
  AgeRequestModel get age;
  SexType? get sex;
  String get text; // user text to process ,
  BuiltList<String>? get context;
  @BuiltValueField(wireName: 'include_tokens ')
  bool? get includeTokens;
  @BuiltValueField(wireName: 'correct_spelling ')
  bool? get correctSpelling;
  @BuiltValueField(wireName: 'concept_types')
  BuiltList<String>? get conceptTypes;

  ParseRequest._();

  factory ParseRequest({
    required AgeRequestModel age,
    required String text,
    SexType? sex,
    bool? includeTokens,
    bool? correctSpelling,
    List<String>? conceptTypes,
  }) =>
      _$ParseRequest._(
        age: age,
        text: text,
        sex: sex,
        includeTokens: includeTokens,
        correctSpelling: correctSpelling,
        conceptTypes: BuiltList(conceptTypes!),
      );

  String toJson() {
    return json
        .encode(serializers.serializeWith(ParseRequest.serializer, this));
  }

  static ParseRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParseRequest.serializer, json.decode(jsonString));
  }

  static Serializer<ParseRequest> get serializer => _$parseRequestSerializer;
}
