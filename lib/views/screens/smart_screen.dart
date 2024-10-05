import 'package:flutter/material.dart';
import 'package:hive/colors/app_colors.dart';

class SmartScreen extends StatelessWidget {
  const SmartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            
            // Use a separate row for avatars instead of placing them in the leading widget
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: const Icon(Icons.smart_toy, color: Colors.blue),
                    ),
                    const SizedBox(height: 4.0), // Add space between avatar and text
                    const Text("Smart P..."),
                  ],
                ),
                const SizedBox(width: 20.0), // Space between the two avatars
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[100],
                      child: const Icon(Icons.smart_toy, color: Colors.blue),
                    ),
                    const SizedBox(height: 4.0), // Add space between avatar and text
                    const Text("Smart P..."),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            
            // Expanded ListView for feature cards
            Expanded(
              child: ListView(
                children: [
                  buildFeatureCard('Cozy Home', 'Enjoy a cozy life with ambient indicators and device rules.', true),
                  buildFeatureCard('Energy Saving', 'Gain insights into your devices and get energy tips.', false),
                  buildFeatureCard('Smart Protect', 'Home alarm application, guarding your home security.', false),
                  buildFeatureCard('SMS notification service', 'Enabling SMS service, when device linkage or alert is triggered.', true),
                  buildFeatureCard('Featured', 'Virtual services related to devices.', true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Build Feature Card
Widget buildFeatureCard(String title, String description, bool isNew) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.smart_toy, color: Colors.blue),
      ),
      title: Row(
        children: [
          Expanded( // Use Expanded to prevent title overflow
            child: Text(title),
          ),
          if (isNew) ...[
            const SizedBox(width: 4.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: const Text(
                'New',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ),
          ]
        ],
      ),
      subtitle: Text(description),
      trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.grey),
      onTap: () {
        // Handle feature card click
      },
    ),
  );
}
