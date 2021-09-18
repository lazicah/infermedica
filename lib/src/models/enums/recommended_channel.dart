import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommended_channel.g.dart';


class RecommendedChannel extends EnumClass {
  static const RecommendedChannel personalVisit = _$personal_visit;
  static const RecommendedChannel videoTeleconsultation =
      _$video_teleconsultation;
  static const RecommendedChannel audioTeleconsultation =
      _$audio_teleconsultation;
  static const RecommendedChannel textTeleconsultation =
      _$text_teleconsultation;

  const RecommendedChannel._(String name) : super(name);

  static BuiltSet<RecommendedChannel> get values => _$values;
  static RecommendedChannel valueOf(String name) => _$valueOf(name);
  static Serializer<RecommendedChannel> get serializer =>
      _$recommendedChannelSerializer;
}
