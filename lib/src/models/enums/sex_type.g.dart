// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sex_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SexType _$male = const SexType._('male');
const SexType _$female = const SexType._('female');

SexType _$valueOf(String name) {
  switch (name) {
    case 'male':
      return _$male;
    case 'female':
      return _$female;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SexType> _$values = new BuiltSet<SexType>(const <SexType>[
  _$male,
  _$female,
]);

Serializer<SexType> _$sexTypeSerializer = new _$SexTypeSerializer();

class _$SexTypeSerializer implements PrimitiveSerializer<SexType> {
  @override
  final Iterable<Type> types = const <Type>[SexType];
  @override
  final String wireName = 'SexType';

  @override
  Object serialize(Serializers serializers, SexType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SexType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SexType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
