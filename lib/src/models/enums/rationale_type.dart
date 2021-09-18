import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rationale_type.g.dart';


class RationaleType extends EnumClass {
  static const RationaleType r0 = _$r0;
  static const RationaleType r1 = _$r1;
  static const RationaleType r2 = _$r2;
  static const RationaleType r3 = _$r3;
  static const RationaleType r4 = _$r4;
  static const RationaleType r5 = _$r5;
  static const RationaleType r6 = _$r6;

  const RationaleType._(String name) : super(name);

  static BuiltSet<RationaleType> get values => _$values;
  static RationaleType valueOf(String name) => _$valueOf(name);
  static Serializer<RationaleType> get serializer => _$rationaleTypeSerializer;
}