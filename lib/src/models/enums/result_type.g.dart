// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResultType _$symptom = const ResultType._('symptom');
const ResultType _$risk_factor = const ResultType._('riskFactor');
const ResultType _$lab_test = const ResultType._('labTest');
const ResultType _$condition = const ResultType._('condition');

ResultType _$valueOf(String name) {
  switch (name) {
    case 'symptom':
      return _$symptom;
    case 'riskFactor':
      return _$risk_factor;
    case 'labTest':
      return _$lab_test;
    case 'condition':
      return _$condition;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResultType> _$values =
    new BuiltSet<ResultType>(const <ResultType>[
  _$symptom,
  _$risk_factor,
  _$lab_test,
  _$condition,
]);

Serializer<ResultType> _$resultTypeSerializer = new _$ResultTypeSerializer();

class _$ResultTypeSerializer implements PrimitiveSerializer<ResultType> {
  @override
  final Iterable<Type> types = const <Type>[ResultType];
  @override
  final String wireName = 'ResultType';

  @override
  Object serialize(Serializers serializers, ResultType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ResultType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResultType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
