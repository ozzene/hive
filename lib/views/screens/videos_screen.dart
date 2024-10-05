import 'package:flutter/material.dart';
import 'package:hive/colors/app_colors.dart';

class VideoGalleryScreen extends StatelessWidget {
  const VideoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Recorded',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.white),
            ),
            const SizedBox(width: 8),
            Text(
              'Total: --',
              style:
                  TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7)),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view, color: AppColors.grey,),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: 6, // Adjust based on the number of items
                itemBuilder: (context, index) {
                  return _buildPhotoItem(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoItem(int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(
          vertical: 8, horizontal: 16), // Added margin for spacing
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners for the card
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding inside the card
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Align items in the center vertically
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/profile.jpg',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '15:04:${23 - index}', // Adjust based on your actual logic
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'FTYB736826RJCWT',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Icon(Icons.camera, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        'Capture manually',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8), // Added spacing between items
            Text(
              '${224 + index}.26KB',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
