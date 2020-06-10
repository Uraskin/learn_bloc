import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_block/models/error_models.dart';
import 'package:learn_block/models/news_models.dart';
import 'package:learn_block/repositories/news_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository newsRepository = NewsRepository();

  NewsBloc();

  @override
  NewsState get initialState => LoadingNewsState();

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is FetchNewsEvent) {
      yield* _handleFetchNewsEvent();
    } 
  }

  Stream<NewsState> _handleFetchNewsEvent() async* {
    if (!(state is IdleNewsState)) {
      yield LoadingNewsState();
    }

    try {
      final newsResponse = await newsRepository.getActicles();
      yield IdleNewsState(
        news: newsResponse,
      );
    } catch (ex) {
      yield ErrorNewsState(ex);
    }
  }
}
