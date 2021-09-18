import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sex_filter.g.dart';

class SexFilter extends EnumClass {
  static const SexFilter both = _$both;
  static const SexFilter male = _$male;
  static const SexFilter female = _$female;

  const SexFilter._(String name) : super(name);

  static BuiltSet<SexFilter> get values => _$values;
  static SexFilter valueOf(String name) => _$valueOf(name);
  static Serializer<SexFilter> get serializer => _$sexFilterSerializer;
}
