import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parent_relation.g.dart';

class ParentRelation extends EnumClass {
  static const ParentRelation base = _$base;
  static const ParentRelation duration = _$duration;
  static const ParentRelation severity = _$severity;
  static const ParentRelation character = _$character;
  static const ParentRelation exacerbatingFactor = _$exacerbating_factor;
  static const ParentRelation diminishingFactor = _$diminishing_factor;
  static const ParentRelation location = _$location;
  static const ParentRelation radiation = _$radiation;

  const ParentRelation._(String name) : super(name);

  static BuiltSet<ParentRelation> get values => _$values;
  static ParentRelation valueOf(String name) => _$valueOf(name);
  static Serializer<ParentRelation> get serializer =>
      _$parentRelationSerializer;
}
