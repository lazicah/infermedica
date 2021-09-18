import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'acuteness.g.dart';

class Acuteness extends EnumClass {
  static const Acuteness chronic = _$chronic;
  static const Acuteness chronicWithExacerbations =
      _$chronic_with_exacerbations;
  static const Acuteness acutePotentiallyChronic = _$acute_potentially_chronic;
  static const Acuteness acute = _$acute;

  const Acuteness._(String name) : super(name);

  static BuiltSet<Acuteness> get values => _$values;
  static Acuteness valueOf(String name) => _$valueOf(name);
  static Serializer<Acuteness> get serializer => _$acutenessSerializer;
}