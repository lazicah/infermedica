import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'triage_level.g.dart';

class TriageLevel extends EnumClass {
  static const TriageLevel emergencyAmbulance = _$emergency_ambulance;
  static const TriageLevel emergency = _$emergency;
  static const TriageLevel consultation24 = _$consultation_24;
  static const TriageLevel consultation = _$consultation;
  static const TriageLevel selfCare = _$self_care;

  const TriageLevel._(String name) : super(name);

  static BuiltSet<TriageLevel> get values => _$values;
  static TriageLevel valueOf(String name) => _$valueOf(name);
  static Serializer<TriageLevel> get serializer => _$triageLevelSerializer;
}
