// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_channel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecommendedChannel _$personal_visit =
    const RecommendedChannel._('personalVisit');
const RecommendedChannel _$video_teleconsultation =
    const RecommendedChannel._('videoTeleconsultation');
const RecommendedChannel _$audio_teleconsultation =
    const RecommendedChannel._('audioTeleconsultation');
const RecommendedChannel _$text_teleconsultation =
    const RecommendedChannel._('textTeleconsultation');

RecommendedChannel _$valueOf(String name) {
  switch (name) {
    case 'personalVisit':
      return _$personal_visit;
    case 'videoTeleconsultation':
      return _$video_teleconsultation;
    case 'audioTeleconsultation':
      return _$audio_teleconsultation;
    case 'textTeleconsultation':
      return _$text_teleconsultation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RecommendedChannel> _$values =
    new BuiltSet<RecommendedChannel>(const <RecommendedChannel>[
  _$personal_visit,
  _$video_teleconsultation,
  _$audio_teleconsultation,
  _$text_teleconsultation,
]);

Serializer<RecommendedChannel> _$recommendedChannelSerializer =
    new _$RecommendedChannelSerializer();

class _$RecommendedChannelSerializer
    implements PrimitiveSerializer<RecommendedChannel> {
  @override
  final Iterable<Type> types = const <Type>[RecommendedChannel];
  @override
  final String wireName = 'RecommendedChannel';

  @override
  Object serialize(Serializers serializers, RecommendedChannel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  RecommendedChannel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecommendedChannel.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
