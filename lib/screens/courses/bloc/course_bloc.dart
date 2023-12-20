import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:financial_helper_app/models/course_model.dart';
import 'package:financial_helper_app/repository/course_repository.dart';
import 'package:meta/meta.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {

  final CourseRepository _courseRepository;

  CourseBloc(this._courseRepository) : super(CourseInitial()) {
    on<GetCourseListEvent>(_getCourseListHandler);
    on<UpdateTestResultEvent>(_updateTestResultHandler);
    on<ResetTestResultsEvent>(_resetTestResultsHandler);


  }

  void _getCourseListHandler(
      GetCourseListEvent event, Emitter<CourseState> emit) {
    emit(LoadingCourseListState());
    final courseList = _courseRepository.getCourses;
    emit(LoadedCourseListState(courseList: courseList));
  }

  void _updateTestResultHandler(
      UpdateTestResultEvent event, Emitter<CourseState> emit) {
    if (event.result > event.course.result) {
      event.course.result = event.result;
    }
  }

  void _resetTestResultsHandler(
      ResetTestResultsEvent event, Emitter<CourseState> emit) {
    final courseList = _courseRepository.getCourses;
    for (int i = 0; i < courseList.length; i++) {
      courseList[i].result = 0;
    }
    emit(LoadingCourseListState());
    emit(LoadedCourseListState(courseList: courseList));
  }
}
