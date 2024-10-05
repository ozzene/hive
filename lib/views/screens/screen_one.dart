import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/colors/app_colors.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
  mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
  children: [
     SvgPicture.asset(
      'assets/images/box_empty.svg', // Update this path to where your SVG file is located
      height: 200.0, // Adjust the height as needed
      width: 200.0, // Adjust the width as needed
    ),
    const SizedBox(height: 16.0), // Add some spacing between the SVG and the text
    const Text('No Devices'),
    const SizedBox(height: 16.0), // Add some spacing between the text and the button
    ElevatedButton(
  onPressed: () {
    // Define your button action here
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: AppColors.primaryColor, // Set the text color
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Adjust padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0), // Set rounded corners
    ),
    elevation: 4.0, // Set elevation for shadow effect
  ),
  child: const Text(
    'Add Device',
    style: TextStyle(
      fontSize: 16.0, // Customize font size
      fontWeight: FontWeight.bold, // Make the text bold
    ),
  ),
),

  ],
),
    );
  }
}
