import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../../serializers.dart';
import 'observation_mention.dart';
part 'parse_response.g.dart';

abstract class ParseResponse
    implements Built<ParseResponse, ParseResponseBuilder> {
  BuiltList<ObservationMention>
      get mentions; // list of recognized symptom or risk factor mentions ,
  BuiltList<String>? get tokens;
  bool
      get obvious; // indicates that entire input text has been parsed successfully and unambiguously

  ParseResponse._();

  factory ParseResponse([void Function(ParseResponseBuilder) updates]) =
      _$ParseResponse;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ParseResponse.serializer, this));
  }

  static ParseResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParseResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParseResponse> get serializer => _$parseResponseSerializer;
}
