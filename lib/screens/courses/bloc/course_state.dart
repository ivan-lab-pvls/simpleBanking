part of 'course_bloc.dart';

@immutable
abstract class CourseState {}

class CourseInitial extends CourseState {}

class LoadingCourseListState extends CourseState {}

class LoadedCourseListState extends CourseState {
  final List<CourseModel> courseList;

  LoadedCourseListState({required this.courseList});
}
