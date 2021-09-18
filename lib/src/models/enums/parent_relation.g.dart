// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ParentRelation _$base = const ParentRelation._('base');
const ParentRelation _$duration = const ParentRelation._('duration');
const ParentRelation _$severity = const ParentRelation._('severity');
const ParentRelation _$character = const ParentRelation._('character');
const ParentRelation _$exacerbating_factor =
    const ParentRelation._('exacerbatingFactor');
const ParentRelation _$diminishing_factor =
    const ParentRelation._('diminishingFactor');
const ParentRelation _$location = const ParentRelation._('location');
const ParentRelation _$radiation = const ParentRelation._('radiation');

ParentRelation _$valueOf(String name) {
  switch (name) {
    case 'base':
      return _$base;
    case 'duration':
      return _$duration;
    case 'severity':
      return _$severity;
    case 'character':
      return _$character;
    case 'exacerbatingFactor':
      return _$exacerbating_factor;
    case 'diminishingFactor':
      return _$diminishing_factor;
    case 'location':
      return _$location;
    case 'radiation':
      return _$radiation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ParentRelation> _$values =
    new BuiltSet<ParentRelation>(const <ParentRelation>[
  _$base,
  _$duration,
  _$severity,
  _$character,
  _$exacerbating_factor,
  _$diminishing_factor,
  _$location,
  _$radiation,
]);

Serializer<ParentRelation> _$parentRelationSerializer =
    new _$ParentRelationSerializer();

class _$ParentRelationSerializer
    implements PrimitiveSerializer<ParentRelation> {
  @override
  final Iterable<Type> types = const <Type>[ParentRelation];
  @override
  final String wireName = 'ParentRelation';

  @override
  Object serialize(Serializers serializers, ParentRelation object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ParentRelation deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ParentRelation.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
