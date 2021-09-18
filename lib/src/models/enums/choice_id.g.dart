// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChoiceId _$present = const ChoiceId._('present');
const ChoiceId _$absent = const ChoiceId._('absent');
const ChoiceId _$unknown = const ChoiceId._('unknown');

ChoiceId _$valueOf(String name) {
  switch (name) {
    case 'present':
      return _$present;
    case 'absent':
      return _$absent;
    case 'unknown':
      return _$unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChoiceId> _$values = new BuiltSet<ChoiceId>(const <ChoiceId>[
  _$present,
  _$absent,
  _$unknown,
]);

Serializer<ChoiceId> _$choiceIdSerializer = new _$ChoiceIdSerializer();

class _$ChoiceIdSerializer implements PrimitiveSerializer<ChoiceId> {
  @override
  final Iterable<Type> types = const <Type>[ChoiceId];
  @override
  final String wireName = 'ChoiceId';

  @override
  Object serialize(Serializers serializers, ChoiceId object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ChoiceId deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChoiceId.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
