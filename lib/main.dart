import 'package:financial_helper_app/financial_helper_app.dart';
import 'package:financial_helper_app/repository/course_repository.dart';
import 'package:financial_helper_app/repository/news_repository.dart';
import 'package:financial_helper_app/screens/courses/bloc/course_bloc.dart';
import 'package:financial_helper_app/screens/news/bloc/news_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetIt.instance.registerSingleton(NewsRepository());
  await GetIt.instance.registerSingleton(CourseRepository());

  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<NewsBloc>(
              create: (context) => NewsBloc(GetIt.I<NewsRepository>())),
          BlocProvider<CourseBloc>(
              create: (context) => CourseBloc(GetIt.I<CourseRepository>())),
        ],
        child: FinancialHelperApp()),
      );
}
