part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  bool get stringify => true;

  @override
  List<Object> get props => null;
}

class FetchNewsEvent extends NewsEvent {}

