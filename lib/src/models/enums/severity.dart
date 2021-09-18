import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'severity.g.dart';

class Severity extends EnumClass {
  static const Severity mild = _$mild;
  static const Severity moderate = _$moderate;
  static const Severity severe = _$severe;

  const Severity._(String name) : super(name);

  static BuiltSet<Severity> get values => _$values;
  static Severity valueOf(String name) => _$valueOf(name);
  static Serializer<Severity> get serializer => _$severitySerializer;
}
