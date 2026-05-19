import 'package:flutter/material.dart';
import '../widgets/app_navigation_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text('ព័ត៌មានផ្ទាល់ខ្លួន (Profile)'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 10,
      ),
      drawer: const AppNavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),

              padding: const EdgeInsets.only(bottom: 30, top: 30),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage(
                        'assets/fonts/images/mypic.png',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Chann Lyhour',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'KantumruyPro',
                    ),
                  ),
                  Text(
                    'ChannLyhoue.vercel.app',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.85),
                    ),
                  ),
                ],
              ),
            ),
            // 🟢 Info Body Content
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(
                      'ព័ត៌មានគណនី (Account Information)',
                      style: TextStyle(
                        fontFamily: 'KantumruyPro',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  // Information Section Card
                  // Information Section Card
                  Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          _buildProfileItem(
                            icon: Icons.badge_outlined,
                            title: 'ឈ្មោះពេញ (Full Name)',
                            value: 'Hour Dev',
                          ),
                          const Divider(indent: 56, endIndent: 16, height: 1),
                          _buildProfileItem(
                            icon: Icons.phone_android_outlined,
                            title: 'លេខទូរស័ព្ទ (Phone Number)',
                            value: '+855 12 345 678',
                          ),
                          const Divider(indent: 56, endIndent: 16, height: 1),
                          _buildProfileItem(
                            icon: Icons.location_on_outlined,
                            title: 'ទីតាំង (Location)',
                            value: 'Phnom Penh, Cambodia',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Actions Section Card
                  Card(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.edit_outlined,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        'កែសម្រួលគណនី (Edit Profile)',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        print('Edit Profile Pressed');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper builder widget to keep the list clean and uniform
Widget _buildProfileItem({
  required IconData icon,
  required String title,
  required String value,
}) {
  return ListTile(
    leading: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.blue, size: 22),
    ),
    title: Text(
      title,
      style: const TextStyle(fontSize: 13, color: Colors.grey),
    ),
    subtitle: Text(
      value,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
