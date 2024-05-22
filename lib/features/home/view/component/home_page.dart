import 'package:e_bikes/components/bottom_app_bar.dart';
import 'package:e_bikes/constants/app_assets_path.dart';
import 'package:e_bikes/constants/app_colors.dart';
import 'package:e_bikes/features/home/view/home_screeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    void selectedTab(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    List<Widget> tabOptions = [
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
      const HomeScreen(),
    ];

    return Scaffold(
      body: tabOptions.elementAt(selectedIndex),
      bottomNavigationBar: CustomBottomAppBar(
        onTabSelected: selectedTab,
        backgroundColor: const Color(0xffF1F6FB),
        selectedColor: AppColor.black,
        height: 60.h,
        notchedShape: const CircularNotchedRectangle(),
        items: [
          CustomBottomAppBarItem(AppAssets.homeIcon),
          CustomBottomAppBarItem(AppAssets.markeyIcon),
          CustomBottomAppBarItem(AppAssets.cartIcon),
          CustomBottomAppBarItem(AppAssets.settingsIcon),
        ],
      ),
    );
  }
}
