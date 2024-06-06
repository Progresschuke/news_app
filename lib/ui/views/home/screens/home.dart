import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/common/common_widgets.dart';
import 'package:news_app/data/dummy_data.dart';

import '../widgets/home_category_page.dart';
import 'all.dart';
import 'education.dart';
import 'election.dart';
import 'migration.dart';
import 'sports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final PageController _homePageController = PageController();

  final List<Widget> _homePages = [
    const AllScreen(),
    const EducationScreen(),
    const SportsScreen(),
    const ElectionScreen(),
    const MigrationScreen(),
  ];

  setHomePageIndex(index) {
    setState(() {
      currentPageIndex = index;
      _homePageController.jumpToPage(index);
    });
  }

  Widget _buildHomePage() {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: _homePageController,
      itemBuilder: (context, index) {
        return _homePages[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: NestedScrollView(
            floatHeaderSlivers: false,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  titleSpacing: 0.0,
                  expandedHeight: 64.h,
                  forceElevated: innerBoxIsScrolled,
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 22, 10),
                    child: Column(
                      children: [
                        Container(
                          height: 60.h,
                          width: double.infinity,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  _homePageController.jumpToPage(index);
                                  setState(() {
                                    currentPageIndex = index;
                                  });
                                },
                                child: HomeCategoryPage(
                                  isSelected: currentPageIndex == index,
                                  index: index,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 22, 10),
              child: _buildHomePage(),
            )));
  }
}
