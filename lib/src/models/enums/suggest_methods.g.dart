// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggest_methods.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SuggestMethods _$symptoms = const SuggestMethods._('symptoms');
const SuggestMethods _$demographic_risk_factors =
    const SuggestMethods._('demographicRiskFactors');
const SuggestMethods _$evidence_based_risk_factors =
    const SuggestMethods._('evidenceBasedRiskFactors');
const SuggestMethods _$red_flags = const SuggestMethods._('redFlags');

SuggestMethods _$valueOf(String name) {
  switch (name) {
    case 'symptoms':
      return _$symptoms;
    case 'demographicRiskFactors':
      return _$demographic_risk_factors;
    case 'evidenceBasedRiskFactors':
      return _$evidence_based_risk_factors;
    case 'redFlags':
      return _$red_flags;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SuggestMethods> _$values =
    new BuiltSet<SuggestMethods>(const <SuggestMethods>[
  _$symptoms,
  _$demographic_risk_factors,
  _$evidence_based_risk_factors,
  _$red_flags,
]);

Serializer<SuggestMethods> _$suggestMethodsSerializer =
    new _$SuggestMethodsSerializer();

class _$SuggestMethodsSerializer
    implements PrimitiveSerializer<SuggestMethods> {
  @override
  final Iterable<Type> types = const <Type>[SuggestMethods];
  @override
  final String wireName = 'SuggestMethods';

  @override
  Object serialize(Serializers serializers, SuggestMethods object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  SuggestMethods deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SuggestMethods.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
