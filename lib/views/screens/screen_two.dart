import 'package:flutter/material.dart';
import 'package:hive/colors/app_colors.dart';
import 'package:hive/views/screens/photos_screen.dart';
import 'package:hive/views/screens/videos_screen.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('Cameras',style: TextStyle(color: AppColors.white,)),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view,color: AppColors.grey,),
            onPressed: () {
              // Handle grid view button
            },
          ),
          IconButton(
            icon: const Icon(Icons.crop_free,color: AppColors.grey),
            onPressed: () {
              // Handle scan button
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Device card
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Ensures left justification
                    children: [
                         Container(
                           margin: const EdgeInsets.only(left: 8.0),
                           child: const Text(
                                'KudaCam 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                         ),
                      // Device preview image
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/video.jpg', // Replace with actual device preview image
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8.0),
                            const Row(
                              children: [
                                Icon(Icons.wifi, color: Colors.grey),
                                SizedBox(width: 4.0),
                                Text(
                                  'Connected',
                                  style: TextStyle(color: AppColors.connColor),
                                ),
                              ],
                            ),
                          const Spacer(), // Pushes the following elements to the right
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.notifications, color: Colors.grey),
                                 const SizedBox(width: 5.0),
                                            InkWell(
                                      onTap: () {
                                        // Navigate to the new screen when the icon is tapped
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const PhotoGalleryScreen(),
                                          ),
                                        );
                                      },
                                      child: const Icon(Icons.image, color: Colors.grey),
                                    ),
                                 const SizedBox(width: 5.0),
                                InkWell(
                                  onTap: () {
                                        // Navigate to the new screen when the icon is tapped
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const VideoGalleryScreen(),
                                          ),
                                        );
                                      },
                                  child: const Icon(Icons.videocam, color: Colors.grey)),
                                 const SizedBox(width: 5.0),
                                const Icon(Icons.settings, color: Colors.grey),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                          const SizedBox(height: 10,),
                 Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Ensures left justification
                    children: [
                         Container(
                           margin: const EdgeInsets.only(left: 8.0),
                           child: const Text(
                                'KudaCam 2',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                         ),
                      // Device preview image
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/video.jpg', // Replace with actual device preview image
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Icon(Icons.wifi, color: Colors.grey),
                                SizedBox(width: 4.0),
                                Text(
                                  'Failed...',
                                  style: TextStyle(color: AppColors.errorColor),
                                ),
                              ],
                            ),
                          Spacer(), // Pushes the following elements to the right
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.notifications, color: Colors.grey),
                                 SizedBox(width: 5.0),
                                Icon(Icons.image, color: Colors.grey),
                                 SizedBox(width: 5.0),
                                Icon(Icons.videocam, color: Colors.grey),
                                 SizedBox(width: 5.0),
                                Icon(Icons.settings, color: Colors.grey),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                          const SizedBox(height: 10,),
                 Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Ensures left justification
                    children: [
                         Container(
                           margin: const EdgeInsets.only(left: 8.0),
                           child: const Text(
                                'KudaCam 3',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                         ),
                      // Device preview image
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/video.jpg', // Replace with actual device preview image
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Icon(Icons.wifi, color: Colors.grey),
                                SizedBox(width: 4.0),
                                Text(
                                  'Connecting...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          Spacer(), // Pushes the following elements to the right
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.notifications, color: Colors.grey),
                                 SizedBox(width: 5.0),
                                Icon(Icons.image, color: Colors.grey),
                                 SizedBox(width: 5.0),
                                Icon(Icons.videocam, color: Colors.grey),
                                 SizedBox(width: 5.0),
                                Icon(Icons.settings, color: Colors.grey),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Footer section with pull-down message
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Pull down to refresh/auto-discovery devices.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
