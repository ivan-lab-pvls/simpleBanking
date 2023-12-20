import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/models/news_model.dart';
import 'package:financial_helper_app/screens/news/news_info/widgets/next_button_widget.dart';
import 'package:financial_helper_app/screens/news/news_info/widgets/previous_button_widget.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class NewsInfoScreen extends StatefulWidget {
  final List<NewsModel> newsList;
  final int index;

  const NewsInfoScreen(
      {super.key, required this.newsList, required this.index});

  @override
  State<NewsInfoScreen> createState() => _NewsInfoScreenState();
}

class _NewsInfoScreenState extends State<NewsInfoScreen> {

  @override
  Widget build(BuildContext context) {
    final _controller = PageController(initialPage: widget.index);

    return Scaffold(
      body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          itemCount: widget.newsList.length,
          itemBuilder: (context, index) {
            return Stack(
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
                      opacity: 0.3,
                      image: AssetImage(
                        widget.newsList[index].image,
                      ),
                      fit: BoxFit.cover,
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
                          'News',
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
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                width: double.infinity,
                                child: Text(
                                  widget.newsList[index].date,
                                  style: TextStyle(
                                      color: AppColors.blue,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    widget.newsList[index].title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.blue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                child: Text(
                                  widget.newsList[index].article,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: AppColors.articleGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  (index == 0)
                                      ? SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                        )
                                      : PreviousButtonWidget(
                                          title:
                                              widget.newsList[index - 1].title,
                                          onTap: () {
                                            _controller.previousPage(
                                                duration: Duration(milliseconds: 300),
                                                curve: Curves.ease);
                                          },
                                        ),
                                  (index == widget.newsList.length - 1)
                                      ? SizedBox(
                                    width: MediaQuery.of(context)
                                        .size
                                        .height *
                                        0.2,
                                  )
                                      : NextButtonWidget(
                                    title: widget.newsList[index + 1].title,
                                    onTap: () {
                                      _controller.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.ease);
                                    },
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
