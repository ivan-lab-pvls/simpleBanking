import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/repository/course_repository.dart';
import 'package:financial_helper_app/router/router.dart';
import 'package:financial_helper_app/screens/courses/bloc/course_bloc.dart';
import 'package:financial_helper_app/screens/courses/courses_list/widgets/course_tile_widget.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class CoursesListScreen extends StatefulWidget {
  const CoursesListScreen({super.key});

  @override
  State<CoursesListScreen> createState() => _CoursesListScreenState();
}

class _CoursesListScreenState extends State<CoursesListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/unsplash_screen/background.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.5,
                image: AssetImage(
                  "assets/images/courses/header-image.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 250,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Center(
                child: Text(
                  'WELCOME TO YOUR FINANCIAL ASSISTANT!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.7,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: AppColors.white,
              ),
              child: BlocProvider(
                create: (context) => CourseBloc(GetIt.I<CourseRepository>())
                  ..add(GetCourseListEvent()),
                child: BlocConsumer<CourseBloc, CourseState>(
                    listener: (context, state) => {},
                    builder: (context, state) {
                      if (state is LoadingCourseListState) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is LoadedCourseListState) {
                        final courseList = state.courseList;

                        return ListView.separated(
                          itemCount: courseList.length,
                          separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                            color: AppColors.lightblue,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final course = courseList[index];
                            return CourseTileWidget(
                              name: course.name,
                              text: course.text,
                              image: course.image,
                              result: course.result,
                              questionCount: course.questionCount,
                              onTap: () {
                                context.router.push(CourseInfoRoute(course: course));
                              },
                            );
                          },
                        );
                      }
                      return Container();
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
