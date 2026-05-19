import 'package:flutter/material.dart';
import '../widgets/app_navigation_drawer.dart'; // 🟢 Relative import path
import 'profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ការកំណត់ (Settings)'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: const AppNavigationDrawer(),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Change the onTap inside your lib/screens/settings_screen.dart:
            ListTile(
              leading: const Icon(Icons.person, color: Colors.blue),
              title: const Text(
                'គណនី (Profile)',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // 🟢 Navigates straight to your fresh Profile layout
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
            
            const Divider(),
            ListTile(
              leading: const Icon(Icons.dark_mode, color: Colors.blue),
              title: const Text(
                'រូបរាងកម្មវិធី (Theme Layout)',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.language, color: Colors.blue),
              title: const Text(
                'ភាសា (Language)',
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
