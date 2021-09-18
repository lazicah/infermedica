// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sex_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SexFilter _$both = const SexFilter._('both');
const SexFilter _$male = const SexFilter._('male');
const SexFilter _$female = const SexFilter._('female');

SexFilter _$valueOf(String name) {
  switch (name) {
    case 'both':
      return _$both;
    case 'male':
      return _$male;
    case 'female':
      return _$female;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SexFilter> _$values = new BuiltSet<SexFilter>(const <SexFilter>[
  _$both,
  _$male,
  _$female,
]);

Serializer<SexFilter> _$sexFilterSerializer = new _$SexFilterSerializer();

class _$SexFilterSerializer implements PrimitiveSerializer<SexFilter> {
  @override
  final Iterable<Type> types = const <Type>[SexFilter];
  @override
  final String wireName = 'SexFilter';

  @override
  Object serialize(Serializers serializers, SexFilter object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SexFilter deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SexFilter.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
