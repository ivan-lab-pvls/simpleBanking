import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/models/course_model.dart';
import 'package:financial_helper_app/router/router.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:financial_helper_app/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class CourseTestScreen extends StatefulWidget {

  final CourseModel course;

  const CourseTestScreen({super.key,
    required this.course});

  @override
  State<CourseTestScreen> createState() => _CourseTestScreenState();
}

class _CourseTestScreenState extends State<CourseTestScreen> {
  int result = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Continue";
  bool answered = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

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
            alignment: Alignment.topLeft,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                          'assets/images/icons/arrow-left.svg'),
                    ),
                  ),
                ],
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
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
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
                maxHeight: MediaQuery
                    .of(context)
                    .size
                    .height * 0.8,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: AppColors.white,
              ),
              child: PageView.builder(
                controller: _controller!,
                onPageChanged: (page) {
                  // if (page == widget.course.test.length - 1) {
                  //   setState(() {
                  //     btnText = "See Results";
                  //   });
                  // }
                  setState(() {
                    answered = false;
                  });
                },
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "${widget.course.test[index].question}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.blue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        for (int i = 0;
                        i < widget.course.test[index].answers!.length;
                        i++)
                          Container(
                            width: double.infinity,
                            height: 70.0,
                            child: RawMaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(300.0),
                              ),
                              fillColor: btnPressed
                                  ? widget.course.test[index].answers!.values
                                  .toList()[i]
                                  ? AppColors.green
                                  : AppColors.red
                                  : AppColors.blue,
                              onPressed: !answered
                                  ? () {
                                if (widget.course.test[index].answers!.values
                                    .toList()[i]) {
                                  result++;
                                  print(result);
                                } else {
                                  print(result);
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                                  : null,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    widget.course.test[index].answers!.keys
                                        .toList()[i],
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 16.0,
                                    )),
                              ),
                            ),
                          ),
                        SizedBox(
                          height: 40.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "${index + 1}/${widget.course.questionCount}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: _controller!,
                          count: widget.course.questionCount,
                          effect: WormEffect(
                            activeDotColor: AppColors.blue,
                            dotColor: AppColors.lightblue,
                            dotHeight: 10,
                            dotWidth: 10,
                          ),
                        ),
                        AppElevatedButton(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                btnText,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 2),
                              SvgPicture.asset(
                                  'assets/images/icons/arrow-right.svg'),
                            ],
                          ),
                          onPressed: () {
                            if (_controller!.page?.toInt() ==
                                widget.course.test.length - 1) {
                              context.router.push(ResultTestRoute(course: widget.course, result: result));
                            } else {
                            _controller!.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease);
                            setState(() {
                            btnPressed = false;
                            });
                            }
                          },
                        ),
                      ],
                    ),
                  );
                },
                itemCount: widget.course.test.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
