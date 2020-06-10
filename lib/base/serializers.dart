import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:learn_block/models/news_models.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Acrticle,
  NewsData
])
final Serializers serializers = _$serializers;

Serializers standardSerializers = (serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
).build();

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

_parseAndDecode(String response) {
  return jsonDecode(response);
}