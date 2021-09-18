// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConceptItemType _$condition = const ConceptItemType._('condition');
const ConceptItemType _$symptom = const ConceptItemType._('symptom');
const ConceptItemType _$risk_factor = const ConceptItemType._('riskFactor');
const ConceptItemType _$lab_test = const ConceptItemType._('labTest');

ConceptItemType _$valueOf(String name) {
  switch (name) {
    case 'condition':
      return _$condition;
    case 'symptom':
      return _$symptom;
    case 'riskFactor':
      return _$risk_factor;
    case 'labTest':
      return _$lab_test;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ConceptItemType> _$values =
    new BuiltSet<ConceptItemType>(const <ConceptItemType>[
  _$condition,
  _$symptom,
  _$risk_factor,
  _$lab_test,
]);

Serializer<ConceptItemType> _$conceptItemTypeSerializer =
    new _$ConceptItemTypeSerializer();

class _$ConceptItemTypeSerializer
    implements PrimitiveSerializer<ConceptItemType> {
  @override
  final Iterable<Type> types = const <Type>[ConceptItemType];
  @override
  final String wireName = 'ConceptItemType';

  @override
  Object serialize(Serializers serializers, ConceptItemType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ConceptItemType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConceptItemType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
