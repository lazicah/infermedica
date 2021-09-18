import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suggest_methods.g.dart';


class SuggestMethods extends EnumClass {
  static const SuggestMethods symptoms = _$symptoms;
  static const SuggestMethods demographicRiskFactors =
      _$demographic_risk_factors;
  static const SuggestMethods evidenceBasedRiskFactors =
      _$evidence_based_risk_factors;
  static const SuggestMethods redFlags = _$red_flags;

  const SuggestMethods._(String name) : super(name);

  static BuiltSet<SuggestMethods> get values => _$values;
  static SuggestMethods valueOf(String name) => _$valueOf(name);
  static Serializer<SuggestMethods> get serializer =>
      _$suggestMethodsSerializer;
}