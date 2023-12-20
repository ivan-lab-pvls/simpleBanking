import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/repository/course_repository.dart';
import 'package:financial_helper_app/screens/courses/bloc/course_bloc.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:financial_helper_app/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  String _name = "John Doe";
  String _email = "johndoe@example.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
              'Statistics',
              style: TextStyle(color: AppColors.blue),
            )),
      ),
      body: BlocProvider(
        create: (context) =>
        CourseBloc(GetIt.I<CourseRepository>())
          ..add(GetCourseListEvent()),
        child: BlocConsumer<CourseBloc, CourseState>(
            listener: (context, state) => {},
            builder: (context, state) {
              if (state is LoadingCourseListState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoadedCourseListState) {
                final courseList = state.courseList;

                return Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Username:',
                                  style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '$_name',
                                  style: TextStyle(
                                      color: AppColors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'E-mail:',
                                  style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '$_email',
                                  style: TextStyle(
                                      color: AppColors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: AppElevatedButton(
                              content: Text(
                                'Edit',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              onPressed: () {
                                showEditDialog();
                              },
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: courseList.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                final course = courseList[index];
                                return Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Test',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: AppColors.grey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: MediaQuery
                                                .of(context)
                                                .size
                                                .width *
                                                0.5,
                                            child: Text(
                                              course.name,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: AppColors.blue,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                      course.result == 0
                                          ? Row(
                                        children: [
                                          Text(
                                            '${course.result}/${course.questionCount}',
                                            style: TextStyle(
                                                color: AppColors.blue,
                                                fontSize: 14,
                                                fontWeight:
                                                FontWeight.w500),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'not started',
                                            style: TextStyle(
                                                color: AppColors.grey,
                                                fontSize: 11,
                                                fontWeight:
                                                FontWeight.w400),
                                          ),
                                        ],
                                      )
                                          : Text(
                                        '${course.result}/${course.questionCount}',
                                        style: TextStyle(
                                            color: AppColors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: AppElevatedButton(
                              content: Text(
                                'Reset all tests',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              onPressed: () {
                                _showResetDialog();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return Container();
            }),
      ),
    );
  }

  void showEditDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final nameController = TextEditingController(text: _name);
        final emailController = TextEditingController(text: _email);
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0)),
          child: Container(
            height: 300.0,
            width: 400.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height:
                    100,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Edit username',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.blue,
                                  width: 1.0),
                              borderRadius:
                              BorderRadius.circular(
                                  300.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.blue,
                                  width: 1.0),
                              borderRadius:
                              BorderRadius.circular(
                                  300.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                                color: AppColors.blue),
                            fillColor: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:
                    100,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Edit E-mail',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.blue,
                                  width: 1.0),
                              borderRadius:
                              BorderRadius.circular(
                                  300.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.blue,
                                  width: 1.0),
                              borderRadius:
                              BorderRadius.circular(
                                  300.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                                color: AppColors.blue),
                            fillColor: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          child: Text('Cancel', style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _name = nameController.text;
                              _email = emailController.text;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text('Save', style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showResetDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0)),
          child: Container(
            height: 105.0,
            width: 400.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('All test results will be reset', style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          child: Text('Cancel', style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<CourseBloc>().add(
                                ResetTestResultsEvent());
                            Navigator.of(context).pop();
                          },
                          child: Text('Continue', style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
