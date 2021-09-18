import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sex_type.g.dart';

class SexType extends EnumClass {
  static const SexType male = _$male;
  static const SexType female = _$female;

  const SexType._(String name) : super(name);

  static BuiltSet<SexType> get values => _$values;
  static SexType valueOf(String name) => _$valueOf(name);
  static Serializer<SexType> get serializer => _$sexTypeSerializer;
}