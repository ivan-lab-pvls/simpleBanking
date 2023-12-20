import 'package:auto_route/auto_route.dart';
import 'package:financial_helper_app/repository/news_repository.dart';
import 'package:financial_helper_app/router/router.dart';
import 'package:financial_helper_app/screens/news/bloc/news_bloc.dart';
import 'package:financial_helper_app/screens/news/news_list/widgets/news_tile_widget.dart';
import 'package:financial_helper_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
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
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Center(
                child: Text(
                  'BUSINESS NEWS',
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
                create: (context) => NewsBloc(GetIt.I<NewsRepository>())
                  ..add(GetNewsListEvent()),
                child: BlocConsumer<NewsBloc, NewsState>(
                    listener: (context, state) => {},
                    builder: (context, state) {
                      if (state is LoadingNewsListState) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is LoadedNewsListState) {
                        final newsList = state.newsList;

                        return ListView.separated(
                          itemCount: newsList.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(
                            color: AppColors.lightblue,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final news = newsList[index];
                            return NewsTileWidget(
                              title: news.title,
                              article: news.article,
                              date: news.date,
                              image: news.image,
                              onTap: () {
                                context.router.push(NewsInfoRoute(newsList: newsList, index: index));
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
