import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/ui/views/favorite/screens/favorite.dart';
import 'package:news_app/ui/views/home/screens/home.dart';
import 'package:news_app/ui/views/inbox/screens/inbox.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/app_images.dart';
import '../../search/screens/search.dart';
import '../widgets/bottom_icons.dart';

class HomeHandlerScreen extends StatefulWidget {
  const HomeHandlerScreen({super.key});

  @override
  State<HomeHandlerScreen> createState() => _HomeHandlerScreenState();
}

class _HomeHandlerScreenState extends State<HomeHandlerScreen> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const InboxScreen(),
    const FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      bottomNavigationBar: buildBottom(),
      body: _buildBarPage(),
    );
  }

  Widget buildBottom() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconWithLabel(
            onTap: () {
              setBottomBarIndex(0);
            },
            isSelected: currentIndex == 0,
            icon: AppImages.homeIcon,
            selectedIcon: AppImages.homeIcon,
            label: 'Discover',
          ),
          5.horizontalSpace,
          IconWithLabel(
            onTap: () {
              setBottomBarIndex(1);
            },
            isSelected: currentIndex == 1,
            icon: AppImages.searchIcon,
            selectedIcon: AppImages.searchIcon,
            label: 'Search',
          ),
          5.horizontalSpace,
          IconWithLabel(
            onTap: () {
              setBottomBarIndex(2);
            },
            isSelected: currentIndex == 2,
            icon: AppImages.inboxIcon,
            selectedIcon: AppImages.inboxIcon,
            label: 'Inbox',
          ),
          5.horizontalSpace,
          IconWithLabel(
            onTap: () {
              setBottomBarIndex(3);
            },
            isSelected: currentIndex == 3,
            icon: AppImages.favoriteIcon,
            selectedIcon: AppImages.favoriteIcon,
            label: 'Favorite',
          ),
        ],
      ),
    );
  }

  Widget _buildBarPage() {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      itemBuilder: (context, index) {
        return _pages[index];
      },
    );
  }
}
