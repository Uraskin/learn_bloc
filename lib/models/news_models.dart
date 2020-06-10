import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_models.g.dart';

abstract class NewsData implements Built<NewsData, NewsDataBuilder> {
 
  @nullable
  @BuiltValueField(wireName: 'articles')
  BuiltList<Acrticle> get articles;

  NewsData._();

  factory NewsData([updates(NewsDataBuilder b)]) = _$NewsData;

  static Serializer<NewsData> get serializer => _$newsDataSerializer;
}

abstract class Acrticle implements Built<Acrticle, AcrticleBuilder> {
 
  @nullable
  @BuiltValueField(wireName: 'author')
  String get author;

  @nullable
  @BuiltValueField(wireName: 'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: 'description')
  String get description;

  Acrticle._();

  factory Acrticle([updates(AcrticleBuilder b)]) = _$Acrticle;

  static Serializer<Acrticle> get serializer => _$acrticleSerializer;
}