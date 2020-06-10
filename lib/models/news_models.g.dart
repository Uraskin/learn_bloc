// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsData> _$newsDataSerializer = new _$NewsDataSerializer();
Serializer<Acrticle> _$acrticleSerializer = new _$AcrticleSerializer();

class _$NewsDataSerializer implements StructuredSerializer<NewsData> {
  @override
  final Iterable<Type> types = const [NewsData, _$NewsData];
  @override
  final String wireName = 'NewsData';

  @override
  Iterable<Object> serialize(Serializers serializers, NewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.articles != null) {
      result
        ..add('articles')
        ..add(serializers.serialize(object.articles,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Acrticle)])));
    }
    return result;
  }

  @override
  NewsData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Acrticle)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AcrticleSerializer implements StructuredSerializer<Acrticle> {
  @override
  final Iterable<Type> types = const [Acrticle, _$Acrticle];
  @override
  final String wireName = 'Acrticle';

  @override
  Iterable<Object> serialize(Serializers serializers, Acrticle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Acrticle deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AcrticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NewsData extends NewsData {
  @override
  final BuiltList<Acrticle> articles;

  factory _$NewsData([void Function(NewsDataBuilder) updates]) =>
      (new NewsDataBuilder()..update(updates)).build();

  _$NewsData._({this.articles}) : super._();

  @override
  NewsData rebuild(void Function(NewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsDataBuilder toBuilder() => new NewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsData && articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc(0, articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsData')..add('articles', articles))
        .toString();
  }
}

class NewsDataBuilder implements Builder<NewsData, NewsDataBuilder> {
  _$NewsData _$v;

  ListBuilder<Acrticle> _articles;
  ListBuilder<Acrticle> get articles =>
      _$this._articles ??= new ListBuilder<Acrticle>();
  set articles(ListBuilder<Acrticle> articles) => _$this._articles = articles;

  NewsDataBuilder();

  NewsDataBuilder get _$this {
    if (_$v != null) {
      _articles = _$v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NewsData;
  }

  @override
  void update(void Function(NewsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsData build() {
    _$NewsData _$result;
    try {
      _$result = _$v ?? new _$NewsData._(articles: _articles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'articles';
        _articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Acrticle extends Acrticle {
  @override
  final String author;
  @override
  final String title;
  @override
  final String description;

  factory _$Acrticle([void Function(AcrticleBuilder) updates]) =>
      (new AcrticleBuilder()..update(updates)).build();

  _$Acrticle._({this.author, this.title, this.description}) : super._();

  @override
  Acrticle rebuild(void Function(AcrticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcrticleBuilder toBuilder() => new AcrticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Acrticle &&
        author == other.author &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, author.hashCode), title.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Acrticle')
          ..add('author', author)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class AcrticleBuilder implements Builder<Acrticle, AcrticleBuilder> {
  _$Acrticle _$v;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  AcrticleBuilder();

  AcrticleBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author;
      _title = _$v.title;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Acrticle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Acrticle;
  }

  @override
  void update(void Function(AcrticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Acrticle build() {
    final _$result = _$v ??
        new _$Acrticle._(
            author: author, title: title, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
