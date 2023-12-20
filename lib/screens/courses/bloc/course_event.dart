part of 'course_bloc.dart';

@immutable
abstract class CourseEvent {}

class GetCourseListEvent extends CourseEvent {}

class UpdateTestResultEvent extends CourseEvent {
  final int result;
  final CourseModel course;

  UpdateTestResultEvent({required this.result, required this.course});
}

class ResetTestResultsEvent extends CourseEvent {}
