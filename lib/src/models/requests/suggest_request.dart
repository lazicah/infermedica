import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

import '../enums/enums.dart';
import '../age_request_model.dart';
import '../evidence.dart';
import '../serializers.dart';
part 'suggest_request.g.dart';

abstract class SuggestRequest
    implements Built<SuggestRequest, SuggestRequestBuilder> {
  SexType get sex;
  AgeRequestModel get age;
  BuiltList<Evidence>? get evidence;
  JsonObject? get extras;
  @BuiltValueField(wireName: 'evaluated_at')
  String? get evaluatedAt;
  @BuiltValueField(wireName: 'suggest_method')
  SuggestMethods get suggestMethod;

  SuggestRequest._();

  factory SuggestRequest({
    required SexType sex,
    required AgeRequestModel age,
    required SuggestMethods suggestMethod,
    List<Evidence>? evidence,
    Map<String, dynamic>? extras,
    String? evaluatedAt,
  }) =>
      _$SuggestRequest._(
        sex: sex,
        age: age,
        evidence: BuiltList(evidence!),
        extras: JsonObject(extras),
        evaluatedAt: evaluatedAt,
        suggestMethod: suggestMethod,
      );

  String toJson() {
    return json
        .encode(serializers.serializeWith(SuggestRequest.serializer, this));
  }

  static SuggestRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SuggestRequest.serializer, json.decode(jsonString));
  }

  static Serializer<SuggestRequest> get serializer =>
      _$suggestRequestSerializer;
}
