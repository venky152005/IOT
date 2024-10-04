import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/Settings/settings_screen.dart';

class PrivacypolicyScreen extends StatelessWidget {
  const PrivacypolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF282725),
        appBar: AppBar(
          backgroundColor: const Color(0xFF282725),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Last Updated: [Date]',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '[App Name] (“we,” “our,” or “us”) is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our IoT application (the “App”). Please read this policy carefully. If you do not agree with the terms of this Privacy Policy, please do not access the App.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1. Information We Collect',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1.1 Personal Information',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We may collect personal information that you provide to us, including but not limited to:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Email address',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Phone number',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Account credentials',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1.2 Device Information',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'When you use our App, we may automatically collect information about your device, including:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Device type',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Operating system',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Unique device identifiers',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Mobile network information',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1.3 Usage Data',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We may collect information about how you use the App, including:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Log data (e.g., IP address, browser type, and access times)',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Interaction data (e.g., clicks, screen views)',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '2. How We Use Your Information',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We may use the information we collect for various purposes, including to:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Provide and maintain our App',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Improve, personalize, and expand our App',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Analyze usage and trends to enhance user experience',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Communicate with you, including responding to inquiries and sending updates',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Ensure the security and integrity of our App',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '3. Data Sharing and Disclosure',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We may share your information in the following situations:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Service Providers: We may employ third-party companies and individuals to facilitate our App, provide the service on our behalf, or assist us in analyzing how our App is used.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Legal Requirements: We may disclose your information if required to do so by law or in response to valid requests by public authorities.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '4. Data Security',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We take the security of your personal information seriously and implement appropriate technical and organizational measures to protect it from unauthorized access, use, or disclosure. However, please be aware that no method of transmission over the internet or method of electronic storage is 100% secure.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '5. Your Rights',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Depending on your location, you may have the following rights regarding your personal information:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The right to access',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The right to rectify',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The right to erase',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The right to restrict processing',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The right to data portability',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'To exercise these rights, please contact us using the information provided below.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "6. Children’s Privacy",
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Our App is not intended for children under the age of 13. We do not knowingly collect personal information from children. If we become aware that we have collected personal information from a child, we will take steps to remove that information from our servers.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '7. Changes to This Privacy Policy',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the “Last Updated” date. You are advised to review this Privacy Policy periodically for any changes.',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '8. Contact Us',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'If you have any questions about this Privacy Policy, please contact us at:',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Email: naveensnlbe@gmail.com',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Address: [Company Address]',
                  style: TextStyle(
                    fontFamily: 'ClashDisplay',
                    fontSize: 15,
                    color: Color(0xFFB9B8B8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
