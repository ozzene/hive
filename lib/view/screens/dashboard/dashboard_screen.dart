// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive/helper/route_helper.dart';
import 'package:hive/util/dimensiona.dart';
import 'package:hive/util/images.dart';
import 'package:hive/view/screens/features/feature_screen.dart';
import 'package:hive/view/screens/home/home_screen.dart';
import 'package:hive/view/screens/profile/profile_screen.dart';
import 'package:hive/view/screens/smart/smart_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const FeatureScreen(),
    const SmartScreen(),
    const ProfileScreen()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(
          Dimensions.paddingSizeExtraSmall,
        ),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 50,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeDefault,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildBottomNavItem(
                  0,
                  [
                    Images.home,
                    Images.home_solid,
                  ],
                  "Home",
                  context),
              buildBottomNavItem(
                  1,
                  [
                    Images.feature,
                    Images.featureSolid,
                  ],
                  "Features",
                  context),
              buildBottomNavItem(
                  2,
                  [
                    Images.smartOutline,
                    Images.smartSolid,
                  ],
                  "Smart",
                  context),
              buildBottomNavItem(
                  3,
                  [
                    Images.profile,
                    Images.profile_solid,
                  ],
                  "Profile",
                  context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavItem(
      int index, List<String> icon, String title, BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSizeSmall,
      ),
      duration: const Duration(milliseconds: 500),
      child: AnimatedAlign(
        duration: const Duration(milliseconds: 1000),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => index == 4
              ? Get.toNamed(RouteHelper.shopdashboard)
              : _onItemTapped(index),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    _selectedIndex == index ? icon[1] : icon[0],
                    width: 18,
                    height: 18,
                    color: _selectedIndex == index
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).disabledColor,
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraSmall,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: _selectedIndex == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).disabledColor,
                        ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
