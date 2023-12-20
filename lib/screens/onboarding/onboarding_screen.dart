import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/router/router.dart';
import 'package:financial_helper_app/screens/home/home_screen.dart';
import 'package:financial_helper_app/screens/onboarding/widget/onboarding_page_widget.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:financial_helper_app/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 1;
            });
          },
          controller: controller,
          children: [
            OnboardingPageWidget(
              urlImage: 'assets/images/onboarding/onboadring-1.png',
              title: 'Your Financial Education Hub!',
              subtitle:
                  'From budgeting basics to advanced investment strategies, the app provides a comprehensive learning hub that caters to users of all financial literacy levels.',
            ),
            OnboardingPageWidget(
              urlImage: 'assets/images/onboarding/onboadring-2.png',
              title: 'We value your feedback',
              subtitle:
                  'Every day we are getting better due to your ratings and reviews — that helps us protect your accounts.',
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: WormEffect(
                activeDotColor: AppColors.blue,
                dotColor: AppColors.grey,
                dotHeight: 12,
                dotWidth: 12,
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: isLastPage
                  ? AppElevatedButton(
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Continue', style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),),
                          SvgPicture.asset(
                              'assets/images/icons/arrow-right.svg'),
                        ],
                      ),
                      onPressed: () {
                        context.router.push(const HomeRoute());
                      },
                    )
                  : AppElevatedButton(
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Continue', style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),),
                          SvgPicture.asset(
                              'assets/images/icons/arrow-right.svg'),
                        ],
                      ),
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                    ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms of Use',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
