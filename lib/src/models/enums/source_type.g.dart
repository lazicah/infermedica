// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceType _$initial = const SourceType._('initial');
const SourceType _$suggest = const SourceType._('suggest');
const SourceType _$predefined = const SourceType._('predefined');
const SourceType _$red_flags = const SourceType._('redFlags');

SourceType _$valueOf(String name) {
  switch (name) {
    case 'initial':
      return _$initial;
    case 'suggest':
      return _$suggest;
    case 'predefined':
      return _$predefined;
    case 'redFlags':
      return _$red_flags;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SourceType> _$values =
    new BuiltSet<SourceType>(const <SourceType>[
  _$initial,
  _$suggest,
  _$predefined,
  _$red_flags,
]);

Serializer<SourceType> _$sourceTypeSerializer = new _$SourceTypeSerializer();

class _$SourceTypeSerializer implements PrimitiveSerializer<SourceType> {
  @override
  final Iterable<Type> types = const <Type>[SourceType];
  @override
  final String wireName = 'SourceType';

  @override
  Object serialize(Serializers serializers, SourceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SourceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SourceType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
