part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  bool get stringify => true;

  @override
  List<Object> get props => null;
}

class IdleNewsState extends NewsState {
  final NewsData news;

  IdleNewsState({
    this.news,
  });

  @override
  List<Object> get props => [
        news,
      ];
}

class LoadingNewsState extends NewsState {}

class ErrorNewsState extends NewsState {
  final Exception error;

  ErrorNewsState(this.error);

  @override
  List<Object> get props => [error];
}
