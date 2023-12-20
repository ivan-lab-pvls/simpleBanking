import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/models/course_model.dart';
import 'package:financial_helper_app/models/news_model.dart';
import 'package:financial_helper_app/models/question_model.dart';
import 'package:financial_helper_app/screens/courses/course_test/course_test_screen.dart';
import 'package:financial_helper_app/screens/courses/result_test/result_test_screen.dart';
import 'package:financial_helper_app/screens/onboarding/onboarding_screen.dart';
import 'package:financial_helper_app/screens/home/home_screen.dart';
import 'package:financial_helper_app/screens/courses/courses_list/courses_list_screen.dart';
import 'package:financial_helper_app/screens/courses/course_info/course_info_screen.dart';
import 'package:financial_helper_app/screens/news/news_list/news_list_screen.dart';
import 'package:financial_helper_app/screens/news/news_info/news_info_screen.dart';
import 'package:financial_helper_app/screens/statistics/statistics_screen.dart';
import 'package:financial_helper_app/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: CoursesListRoute.page),
    AutoRoute(page: CourseInfoRoute.page),
    AutoRoute(page: CourseTestRoute.page),
    AutoRoute(page: ResultTestRoute.page),
    AutoRoute(page: NewsListRoute.page),
    AutoRoute(page: NewsInfoRoute.page),
    AutoRoute(page: StatisticsRoute.page),
    AutoRoute(page: SettingsRoute.page),

  ];
}