// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prevalence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Prevalence _$very_rare = const Prevalence._('veryRare');
const Prevalence _$rare = const Prevalence._('rare');
const Prevalence _$moderate = const Prevalence._('moderate');
const Prevalence _$common = const Prevalence._('common');

Prevalence _$valueOf(String name) {
  switch (name) {
    case 'veryRare':
      return _$very_rare;
    case 'rare':
      return _$rare;
    case 'moderate':
      return _$moderate;
    case 'common':
      return _$common;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Prevalence> _$values =
    new BuiltSet<Prevalence>(const <Prevalence>[
  _$very_rare,
  _$rare,
  _$moderate,
  _$common,
]);

Serializer<Prevalence> _$prevalenceSerializer = new _$PrevalenceSerializer();

class _$PrevalenceSerializer implements PrimitiveSerializer<Prevalence> {
  @override
  final Iterable<Type> types = const <Type>[Prevalence];
  @override
  final String wireName = 'Prevalence';

  @override
  Object serialize(Serializers serializers, Prevalence object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Prevalence deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Prevalence.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
