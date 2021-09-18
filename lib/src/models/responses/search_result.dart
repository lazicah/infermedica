import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'search_result.g.dart';

abstract class SearchResult
    implements Built<SearchResult, SearchResultBuilder> {
  String get id;
  String get label; //  matched phrase, name or its synonym

  SearchResult._();

  factory SearchResult([void Function(SearchResultBuilder) updates]) =
      _$SearchResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SearchResult.serializer, this));
  }

  static SearchResult? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchResult.serializer, json.decode(jsonString));
  }

  static Serializer<SearchResult> get serializer => _$searchResultSerializer;
}
