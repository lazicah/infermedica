// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'severity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Severity _$mild = const Severity._('mild');
const Severity _$moderate = const Severity._('moderate');
const Severity _$severe = const Severity._('severe');

Severity _$valueOf(String name) {
  switch (name) {
    case 'mild':
      return _$mild;
    case 'moderate':
      return _$moderate;
    case 'severe':
      return _$severe;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Severity> _$values = new BuiltSet<Severity>(const <Severity>[
  _$mild,
  _$moderate,
  _$severe,
]);

Serializer<Severity> _$severitySerializer = new _$SeveritySerializer();

class _$SeveritySerializer implements PrimitiveSerializer<Severity> {
  @override
  final Iterable<Type> types = const <Type>[Severity];
  @override
  final String wireName = 'Severity';

  @override
  Object serialize(Serializers serializers, Severity object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Severity deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Severity.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
