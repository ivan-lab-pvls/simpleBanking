import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/models/course_model.dart';
import 'package:financial_helper_app/router/router.dart';
import 'package:financial_helper_app/screens/courses/bloc/course_bloc.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:financial_helper_app/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ResultTestScreen extends StatefulWidget {
  final CourseModel course;
  final int result;

  const ResultTestScreen(
      {super.key, required this.course, required this.result});

  @override
  State<ResultTestScreen> createState() => _ResultTestScreenState();
}

class _ResultTestScreenState extends State<ResultTestScreen> {
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
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Test',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Center(
                child: Text(
                  widget.course.name.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
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
                maxHeight: MediaQuery.of(context).size.height * 0.8,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: AppColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Image.asset(
                        'assets/images/courses/result-image.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          widget.result > widget.course.questionCount - 5
                              ? Text(
                                  'A perfect score',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              : Text(
                                  'Not bad!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.blue,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                          Text(
                            "${widget.result}/${widget.course.questionCount}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              'We are proud of you! You have shown a great result. Keep up the good work!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: AppElevatedButton(
                        content: Text(
                          'Back to the Courses',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        onPressed: () {
                          context.read<CourseBloc>().add(UpdateTestResultEvent(
                              result: widget.result, course: widget.course));
                          context.router.push(HomeRoute());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
