import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_type.g.dart';


class SourceType extends EnumClass {
  static const SourceType initial = _$initial;
  static const SourceType suggest = _$suggest;
  static const SourceType predefined = _$predefined;
  static const SourceType redFlags = _$red_flags;

  const SourceType._(String name) : super(name);

  static BuiltSet<SourceType> get values => _$values;
  static SourceType valueOf(String name) => _$valueOf(name);
  static Serializer<SourceType> get serializer => _$sourceTypeSerializer;
}