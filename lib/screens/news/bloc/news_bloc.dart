import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:financial_helper_app/models/news_model.dart';
import 'package:financial_helper_app/repository/news_repository.dart';
import 'package:meta/meta.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;
  NewsBloc(this._newsRepository) : super(NewsInitial()) {
    on<GetNewsListEvent>(_getNewsListHandler);
  }

  void _getNewsListHandler(
      GetNewsListEvent event, Emitter<NewsState> emit) {
    emit(LoadingNewsListState());
    final newsList = _newsRepository.getNews;
    emit(LoadedNewsListState(newsList: newsList));
  }
}
