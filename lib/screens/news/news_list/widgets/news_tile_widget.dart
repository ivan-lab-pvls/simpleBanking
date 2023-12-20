import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';

class NewsTileWidget extends StatefulWidget {
  final String title;
  final String article;
  final String date;
  final String image;
  final void Function()? onTap;

  const NewsTileWidget(
      {super.key,
      required this.title,
      required this.article,
      required this.date,
      required this.image,
      required this.onTap});

  @override
  State<NewsTileWidget> createState() => _NewsTileWidgetState();
}

class _NewsTileWidgetState extends State<NewsTileWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),

                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: AppColors.darkblue,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.article,
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 11,
                            fontWeight: FontWeight.w300),
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
