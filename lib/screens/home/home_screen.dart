import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/screens/courses/courses_list/courses_list_screen.dart';
import 'package:financial_helper_app/screens/news/news_list/news_list_screen.dart';
import 'package:financial_helper_app/screens/settings/settings_screen.dart';
import 'package:financial_helper_app/screens/statistics/statistics_screen.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _tabs = [CoursesListScreen(), NewsListScreen(), StatisticsScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          iconTheme: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const IconThemeData(color: AppColors.blue);
            } else {
              return const IconThemeData(color: AppColors.grey);
            }
          }),
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue);
            }
            return const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: AppColors.grey);
          }),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedIndex: _currentIndex,
          backgroundColor: AppColors.lightblue,
          indicatorColor: Colors.transparent,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset('assets/images/icons/courses.svg'),
              label: 'Courses',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/images/icons/news.svg'),
              label: 'News',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/images/icons/statistics.svg'),
              label: 'Statistics',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/images/icons/settings.svg'),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
