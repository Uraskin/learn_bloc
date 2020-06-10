import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:learn_block/base/serializers.dart';

part 'error_models.g.dart';

abstract class IBusinessError {

  @BuiltValueField(wireName: 'error')
  @nullable String get error;

}

abstract class ApiError
    implements IBusinessError, Built<ApiError, ApiErrorBuilder> {
  ApiError._();

  factory ApiError([updates(ApiErrorBuilder b)]) = _$ApiError;

  String toJson() {
    return json.encode(serializers.serializeWith(ApiError.serializer, this));
  }

  static ApiError fromJson(String jsonString) {
    return serializers.deserializeWith(
        ApiError.serializer, json.decode(jsonString));
  }

  static Serializer<ApiError> get serializer => _$apiErrorSerializer;
}