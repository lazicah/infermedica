import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:infermedica/src/models/serializers.dart';
import 'enums/enums.dart';
part 'age_request_model.g.dart';

abstract class AgeRequestModel
    implements Built<AgeRequestModel, AgeRequestModelBuilder> {
  int get value; //  age value ,
  AgeUnit? get unit; // unit in which age 

  AgeRequestModel._();

  factory AgeRequestModel([void Function(AgeRequestModelBuilder) updates]) =
      _$AgeRequestModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AgeRequestModel.serializer, this));
  }

  static AgeRequestModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AgeRequestModel.serializer, json.decode(jsonString));
  }

  static Serializer<AgeRequestModel> get serializer =>
      _$ageRequestModelSerializer;
}
