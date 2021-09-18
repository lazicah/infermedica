// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TriageLevel _$emergency_ambulance =
    const TriageLevel._('emergencyAmbulance');
const TriageLevel _$emergency = const TriageLevel._('emergency');
const TriageLevel _$consultation_24 = const TriageLevel._('consultation24');
const TriageLevel _$consultation = const TriageLevel._('consultation');
const TriageLevel _$self_care = const TriageLevel._('selfCare');

TriageLevel _$valueOf(String name) {
  switch (name) {
    case 'emergencyAmbulance':
      return _$emergency_ambulance;
    case 'emergency':
      return _$emergency;
    case 'consultation24':
      return _$consultation_24;
    case 'consultation':
      return _$consultation;
    case 'selfCare':
      return _$self_care;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TriageLevel> _$values =
    new BuiltSet<TriageLevel>(const <TriageLevel>[
  _$emergency_ambulance,
  _$emergency,
  _$consultation_24,
  _$consultation,
  _$self_care,
]);

Serializer<TriageLevel> _$triageLevelSerializer = new _$TriageLevelSerializer();

class _$TriageLevelSerializer implements PrimitiveSerializer<TriageLevel> {
  @override
  final Iterable<Type> types = const <Type>[TriageLevel];
  @override
  final String wireName = 'TriageLevel';

  @override
  Object serialize(Serializers serializers, TriageLevel object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  TriageLevel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TriageLevel.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
