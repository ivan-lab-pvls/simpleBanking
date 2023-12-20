part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class LoadingNewsListState extends NewsState {}

class LoadedNewsListState extends NewsState {
  final List<NewsModel> newsList;

  LoadedNewsListState({required this.newsList});
}


