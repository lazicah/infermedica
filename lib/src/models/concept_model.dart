import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';
import 'enums/enums.dart';
part 'concept_model.g.dart';

abstract class ConceptItemModel
    implements Built<ConceptItemModel, ConceptItemModelBuilder> {
  String? get id;
  ConceptItemType? get type;
  String? get name;
  @BuiltValueField(wireName: 'common_name')
  String? get commonName;

  ConceptItemModel._();

  factory ConceptItemModel([void Function(ConceptItemModelBuilder) updates]) =
      _$ConceptItemModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ConceptItemModel.serializer, this));
  }

  static ConceptItemModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ConceptItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<ConceptItemModel> get serializer =>
      _$conceptItemModelSerializer;
}
