import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CourseTileWidget extends StatefulWidget {
  final String name;
  final String text;
  final String image;
  final int result;
  final int questionCount;
  final void Function()? onTap;

  const CourseTileWidget(
      {super.key,
      required this.name,
      required this.text,
      required this.image,
      required this.onTap,
      required this.result,
      required this.questionCount});

  @override
  State<CourseTileWidget> createState() => _CourseTileWidgetState();
}

class _CourseTileWidgetState extends State<CourseTileWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 15),
              Container(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            color: AppColors.darkblue,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.text,
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Test completed:',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 4.0,
                        percent: widget.result / widget.questionCount,
                        backgroundColor: AppColors.lightblue,
                        progressColor: AppColors.blue,
                        barRadius: Radius.circular(20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
