// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CourseInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CourseInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseInfoScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    CourseTestRoute.name: (routeData) {
      final args = routeData.argsAs<CourseTestRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseTestScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    CoursesListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CoursesListScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    NewsInfoRoute.name: (routeData) {
      final args = routeData.argsAs<NewsInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsInfoScreen(
          key: args.key,
          newsList: args.newsList,
          index: args.index,
        ),
      );
    },
    NewsListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsListScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    ResultTestRoute.name: (routeData) {
      final args = routeData.argsAs<ResultTestRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResultTestScreen(
          key: args.key,
          course: args.course,
          result: args.result,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    StatisticsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatisticsScreen(),
      );
    },
  };
}

/// generated route for
/// [CourseInfoScreen]
class CourseInfoRoute extends PageRouteInfo<CourseInfoRouteArgs> {
  CourseInfoRoute({
    Key? key,
    required CourseModel course,
    List<PageRouteInfo>? children,
  }) : super(
          CourseInfoRoute.name,
          args: CourseInfoRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseInfoRoute';

  static const PageInfo<CourseInfoRouteArgs> page =
      PageInfo<CourseInfoRouteArgs>(name);
}

class CourseInfoRouteArgs {
  const CourseInfoRouteArgs({
    this.key,
    required this.course,
  });

  final Key? key;

  final CourseModel course;

  @override
  String toString() {
    return 'CourseInfoRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [CourseTestScreen]
class CourseTestRoute extends PageRouteInfo<CourseTestRouteArgs> {
  CourseTestRoute({
    Key? key,
    required CourseModel course,
    List<PageRouteInfo>? children,
  }) : super(
          CourseTestRoute.name,
          args: CourseTestRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseTestRoute';

  static const PageInfo<CourseTestRouteArgs> page =
      PageInfo<CourseTestRouteArgs>(name);
}

class CourseTestRouteArgs {
  const CourseTestRouteArgs({
    this.key,
    required this.course,
  });

  final Key? key;

  final CourseModel course;

  @override
  String toString() {
    return 'CourseTestRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [CoursesListScreen]
class CoursesListRoute extends PageRouteInfo<void> {
  const CoursesListRoute({List<PageRouteInfo>? children})
      : super(
          CoursesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoursesListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsInfoScreen]
class NewsInfoRoute extends PageRouteInfo<NewsInfoRouteArgs> {
  NewsInfoRoute({
    Key? key,
    required List<NewsModel> newsList,
    required int index,
    List<PageRouteInfo>? children,
  }) : super(
          NewsInfoRoute.name,
          args: NewsInfoRouteArgs(
            key: key,
            newsList: newsList,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsInfoRoute';

  static const PageInfo<NewsInfoRouteArgs> page =
      PageInfo<NewsInfoRouteArgs>(name);
}

class NewsInfoRouteArgs {
  const NewsInfoRouteArgs({
    this.key,
    required this.newsList,
    required this.index,
  });

  final Key? key;

  final List<NewsModel> newsList;

  final int index;

  @override
  String toString() {
    return 'NewsInfoRouteArgs{key: $key, newsList: $newsList, index: $index}';
  }
}

/// generated route for
/// [NewsListScreen]
class NewsListRoute extends PageRouteInfo<void> {
  const NewsListRoute({List<PageRouteInfo>? children})
      : super(
          NewsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResultTestScreen]
class ResultTestRoute extends PageRouteInfo<ResultTestRouteArgs> {
  ResultTestRoute({
    Key? key,
    required CourseModel course,
    required int result,
    List<PageRouteInfo>? children,
  }) : super(
          ResultTestRoute.name,
          args: ResultTestRouteArgs(
            key: key,
            course: course,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultTestRoute';

  static const PageInfo<ResultTestRouteArgs> page =
      PageInfo<ResultTestRouteArgs>(name);
}

class ResultTestRouteArgs {
  const ResultTestRouteArgs({
    this.key,
    required this.course,
    required this.result,
  });

  final Key? key;

  final CourseModel course;

  final int result;

  @override
  String toString() {
    return 'ResultTestRouteArgs{key: $key, course: $course, result: $result}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StatisticsScreen]
class StatisticsRoute extends PageRouteInfo<void> {
  const StatisticsRoute({List<PageRouteInfo>? children})
      : super(
          StatisticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
