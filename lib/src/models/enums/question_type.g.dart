// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionType _$single = const QuestionType._('single');
const QuestionType _$group_single = const QuestionType._('groupSingle');
const QuestionType _$group_multiple = const QuestionType._('groupMultiple');

QuestionType _$valueOf(String name) {
  switch (name) {
    case 'single':
      return _$single;
    case 'groupSingle':
      return _$group_single;
    case 'groupMultiple':
      return _$group_multiple;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<QuestionType> _$values =
    new BuiltSet<QuestionType>(const <QuestionType>[
  _$single,
  _$group_single,
  _$group_multiple,
]);

Serializer<QuestionType> _$questionTypeSerializer =
    new _$QuestionTypeSerializer();

class _$QuestionTypeSerializer implements PrimitiveSerializer<QuestionType> {
  @override
  final Iterable<Type> types = const <Type>[QuestionType];
  @override
  final String wireName = 'QuestionType';

  @override
  Object serialize(Serializers serializers, QuestionType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  QuestionType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
