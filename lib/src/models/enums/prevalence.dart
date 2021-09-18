import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prevalence.g.dart';

class Prevalence extends EnumClass {
  static const Prevalence veryRare = _$very_rare;
  static const Prevalence rare = _$rare;
  static const Prevalence moderate = _$moderate;
  static const Prevalence common = _$common;

  const Prevalence._(String name) : super(name);

  static BuiltSet<Prevalence> get values => _$values;
  static Prevalence valueOf(String name) => _$valueOf(name);
  static Serializer<Prevalence> get serializer => _$prevalenceSerializer;
}
