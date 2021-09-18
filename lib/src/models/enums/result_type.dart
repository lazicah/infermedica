import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'result_type.g.dart';


class ResultType extends EnumClass {
  static const ResultType symptom = _$symptom;
  static const ResultType riskFactor = _$risk_factor;
  static const ResultType labTest = _$lab_test;
  static const ResultType condition = _$condition;

  const ResultType._(String name) : super(name);

  static BuiltSet<ResultType> get values => _$values;
  static ResultType valueOf(String name) => _$valueOf(name);
  static Serializer<ResultType> get serializer => _$resultTypeSerializer;
}
