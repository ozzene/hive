import 'package:flutter/material.dart';
import 'package:hive/colors/app_colors.dart';
import 'package:hive/views/profile_screen.dart';
import 'package:hive/views/screens/screen_one.dart';
import 'package:hive/views/screens/screen_two.dart';
import 'package:hive/views/screens/screen_three.dart';
import 'package:hive/views/screens/smart_screen.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  // List of screens to navigate
  final List<Widget> _screens = [
    const ScreenOne(), // Home Screen
    const DevicesScreen(), // Smart Devices Screen
    const SmartScreen(), // Profile Screen
    const ScreenThree(), // Other Screen
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Row(
    children: [
      // Profile icon inside a circular container
      Container(
        margin: const EdgeInsets.only(right: 8.0), // Spacing between icon and title
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor, // Use custom grey color for the circle
        ),
        child: IconButton(
          icon: const HugeIcon(
            icon: HugeIcons.strokeRoundedUser,
            color: AppColors.white,
            size: 24.0,
          ),
          onPressed: () {
            // Action to be taken when the profile icon is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
        ),
      ),
      const Text(
        'Hive',
        style: TextStyle(fontSize: 20.0), // Customize the font size if needed
      ),
      const Spacer(), // Pushes the following elements to the right
      Stack(
        clipBehavior: Clip.none, // Allows the dot to overflow the stack
        children: [
          const HugeIcon(
            icon: HugeIcons.strokeRoundedNotification02,
            color: AppColors.grey,
            size: 24.0,
          ),
          Positioned(
            right: 0, // Position the dot on the right
            top: 0, // Position the dot on the top
            child: Container(
              width: 8.0, // Width of the red dot
              height: 8.0, // Height of the red dot
              decoration: const BoxDecoration(
                color: AppColors.notifColor,
                shape: BoxShape.circle, // Make it circular
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),

      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
     bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed, // Ensures items stay fixed and occupy equal space
  currentIndex: _currentIndex,
  onTap: _onTabTapped,
  items: [
    const BottomNavigationBarItem(
      icon: HugeIcon(  // Using HugeIcon instead of Icon
        icon: HugeIcons.strokeRoundedHome09, // Make sure HugeIcons is properly defined
 color: AppColors.grey,
        size: 24.0,
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
icon: HugeIcon(
  icon: HugeIcons.strokeRoundedSmartPhone01,
  color: AppColors.grey,
  size: 24.0,
),
      label: 'Devices',
    ),
 BottomNavigationBarItem(
  icon: Stack(
    clipBehavior: Clip.none, // Allows the dot to overflow the stack
    children: [
      const HugeIcon(
  icon: HugeIcons.strokeRoundedClinic,
        color: AppColors.grey,
        size: 24.0,
      ),
      Positioned(
        right: 0, // Position the dot on the right
        top: 0, // Position the dot on the top
        child: Container(
          width: 8.0, // Width of the red dot
          height: 8.0, // Height of the red dot
          decoration: const BoxDecoration(
            color: AppColors.notifColor,
            shape: BoxShape.circle, // Make it circular
          ),
        ),
      ),
    ],
  ),
  label: 'Smart',
),
    const BottomNavigationBarItem(
      icon: HugeIcon(
  icon: HugeIcons.strokeRoundedUserSharing,
  color: AppColors.grey,
  size: 24.0,
),
      label: 'Profile',
    ),
  ],
),

    );
  }
}
