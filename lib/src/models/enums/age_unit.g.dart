// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'age_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgeUnit _$year = const AgeUnit._('year');
const AgeUnit _$month = const AgeUnit._('month');

AgeUnit _$valueOf(String name) {
  switch (name) {
    case 'year':
      return _$year;
    case 'month':
      return _$month;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AgeUnit> _$values = new BuiltSet<AgeUnit>(const <AgeUnit>[
  _$year,
  _$month,
]);

Serializer<AgeUnit> _$ageUnitSerializer = new _$AgeUnitSerializer();

class _$AgeUnitSerializer implements PrimitiveSerializer<AgeUnit> {
  @override
  final Iterable<Type> types = const <Type>[AgeUnit];
  @override
  final String wireName = 'AgeUnit';

  @override
  Object serialize(Serializers serializers, AgeUnit object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AgeUnit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgeUnit.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
