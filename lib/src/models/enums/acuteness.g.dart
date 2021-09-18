// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acuteness.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Acuteness _$chronic = const Acuteness._('chronic');
const Acuteness _$chronic_with_exacerbations =
    const Acuteness._('chronicWithExacerbations');
const Acuteness _$acute_potentially_chronic =
    const Acuteness._('acutePotentiallyChronic');
const Acuteness _$acute = const Acuteness._('acute');

Acuteness _$valueOf(String name) {
  switch (name) {
    case 'chronic':
      return _$chronic;
    case 'chronicWithExacerbations':
      return _$chronic_with_exacerbations;
    case 'acutePotentiallyChronic':
      return _$acute_potentially_chronic;
    case 'acute':
      return _$acute;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Acuteness> _$values = new BuiltSet<Acuteness>(const <Acuteness>[
  _$chronic,
  _$chronic_with_exacerbations,
  _$acute_potentially_chronic,
  _$acute,
]);

Serializer<Acuteness> _$acutenessSerializer = new _$AcutenessSerializer();

class _$AcutenessSerializer implements PrimitiveSerializer<Acuteness> {
  @override
  final Iterable<Type> types = const <Type>[Acuteness];
  @override
  final String wireName = 'Acuteness';

  @override
  Object serialize(Serializers serializers, Acuteness object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Acuteness deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Acuteness.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
