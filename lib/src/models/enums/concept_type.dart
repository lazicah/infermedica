import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'concept_type.g.dart';

class ConceptItemType extends EnumClass {
  static const ConceptItemType condition = _$condition;
  static const ConceptItemType symptom = _$symptom;
  static const ConceptItemType riskFactor = _$risk_factor;
  static const ConceptItemType labTest = _$lab_test;

  const ConceptItemType._(String name) : super(name);

  static BuiltSet<ConceptItemType> get values => _$values;
  static ConceptItemType valueOf(String name) => _$valueOf(name);
  static Serializer<ConceptItemType> get serializer =>
      _$conceptItemTypeSerializer;
}
