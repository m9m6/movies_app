import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movies/ui/home_screens/profile_tab/profile_tab.dart';
import 'package:movies/ui/home_screens/search_tab/search_tab.dart';
import 'package:movies/utils/assets_manager.dart';
import '../../utils/app_colors.dart';
import 'browse_tab/browse_tab.dart';
import 'home_tab/home_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String homeScreen = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List tabs = [HomeTab(), SearchTabTab(), ExploreTab(),ProfileTab()];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          tabs[selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavigationBar(
              isFloating: true,
              borderRadius: Radius.circular(16),
              backgroundColor: AppColors.lightBlackColor,
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                builtBottomNavigationBarItem(
                  index: 0,
                  selectedIcon: AssetsManager.selectedHomeIcon,
                  unSelectedIcon: AssetsManager.unSelectedHomeIcon,
                ),
                builtBottomNavigationBarItem(
                  index: 1,
                  selectedIcon: AssetsManager.selectedSearchIcon,
                  unSelectedIcon: AssetsManager.unSelectedSearchIcon,
                ),
                builtBottomNavigationBarItem(
                  index: 2,
                  selectedIcon: AssetsManager.selectedExploreIcon,
                  unSelectedIcon: AssetsManager.unSelectedExploreIcon,
                ),
                builtBottomNavigationBarItem(
                  index: 3,
                  selectedIcon: AssetsManager.selectedProfileIcon,
                  unSelectedIcon: AssetsManager.unSelectedProfileIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CustomNavigationBarItem builtBottomNavigationBarItem({
    required int index,
    required String selectedIcon,
    required String unSelectedIcon,
  }) {
    return CustomNavigationBarItem(
      icon: Image.asset(selectedIndex == index ? selectedIcon : unSelectedIcon),
    );
  }
}
