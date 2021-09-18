import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'age_unit.g.dart';


class AgeUnit extends EnumClass {
  static const AgeUnit year = _$year;
  static const AgeUnit month = _$month;

  const AgeUnit._(String name) : super(name);

  static BuiltSet<AgeUnit> get values => _$values;
  static AgeUnit valueOf(String name) => _$valueOf(name);
  static Serializer<AgeUnit> get serializer => _$ageUnitSerializer;
}