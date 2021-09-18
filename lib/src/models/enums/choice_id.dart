import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'choice_id.g.dart';


class ChoiceId extends EnumClass {
  static const ChoiceId present = _$present;
  static const ChoiceId absent = _$absent;
  static const ChoiceId unknown = _$unknown;

  const ChoiceId._(String name) : super(name);

  static BuiltSet<ChoiceId> get values => _$values;
  static ChoiceId valueOf(String name) => _$valueOf(name);
  static Serializer<ChoiceId> get serializer => _$choiceIdSerializer;
}
