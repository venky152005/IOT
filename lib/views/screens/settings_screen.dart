import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/about_screen.dart';
import 'package:iot_application/views/screens/change_password_screen.dart';
import 'package:iot_application/views/screens/privacypolicy_screen.dart';
import 'package:iot_application/views/screens/profile_screen.dart';
import 'package:iot_application/views/screens/terms_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF282725),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
            style: TextStyle(
              fontFamily: 'ClashDisplay',
              color: Color(0xFFB9B8B8),
              fontSize: 30,
            ),
          ),
          backgroundColor: const Color(0xFF282725),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.person_outline,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChangePasswordScreen(),
                    ),
                  );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.lock_open,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'Change Password',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const ProfileScreen(),
                  //   ),
                  // );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.support_agent,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'Help & Support',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacypolicyScreen(),
                    ),
                  );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.privacy_tip_outlined,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TermsScreen(),
                    ),
                  );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.edit_document,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'Terms & Condition',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.info_outline_rounded,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'About Us',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const ProfileScreen(),
                  //   ),
                  // );
                },
                hoverColor: const Color(0xFFD9FE74),
                leading: const Icon(
                  Icons.logout,
                  color: Color(0xFFB9B8B8),
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xFFB9B8B8),
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
