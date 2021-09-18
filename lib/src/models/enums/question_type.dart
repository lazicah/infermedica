import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_type.g.dart';



class QuestionType extends EnumClass {
  static const QuestionType single = _$single;
  static const QuestionType groupSingle = _$group_single;
  static const QuestionType groupMultiple = _$group_multiple;

  const QuestionType._(String name) : super(name);

  static BuiltSet<QuestionType> get values => _$values;
  static QuestionType valueOf(String name) => _$valueOf(name);
  static Serializer<QuestionType> get serializer => _$questionTypeSerializer;
}