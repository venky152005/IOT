import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/Settings/settings_screen.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

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
                  height: 20,
                ),
                Text(
                  'Terms & Conditions',
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
                  'Welcome to [App Name]! These Terms and Conditions govern your use of our mobile application and services. By accessing or using [App Name], you agree to comply with these terms. If you do not agree with these terms, please do not use our app.',
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
                  '1. Acceptance of Terms',
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
                  'By using [App Name], you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions.',
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
                  '2. Changes to Terms',
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
                  'We reserve the right to modify these Terms at any time. We will notify you of any changes by posting the new Terms on this page. Your continued use of the app after any changes constitutes acceptance of the new Terms.',
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
                  '3. User Accounts',
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
                  'You may need to create an account to access certain features of the app.',
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
                  'You are responsible for maintaining the confidentiality of your account information and for all activities under your account.',
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
                  '4. Use of the App',
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
                  'You agree to use the app only for lawful purposes and in accordance with these Terms.',
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
                  'You must not use the app in any way that violates any applicable federal, state, local, or international law or regulation.',
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
                  '5. User Content',
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
                  'You are solely responsible for any content you submit, post, or otherwise transmit through the app.',
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
                  'By submitting content, you grant [App Name] a non-exclusive, royalty-free, perpetual, and worldwide license to use, reproduce, modify, publish, and distribute such content.',
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
                  '6. Intellectual Property',
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
                  'All content, features, and functionality of the app, including but not limited to text, graphics, logos, and software, are the property of [App Name] or its licensors and are protected by copyright, trademark, and other intellectual property laws.',
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
                  '7. Third-Party Links',
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
                  'The app may contain links to third-party websites or services that are not owned or controlled by [App Name]. We have no control over, and assume no responsibility for, the content, privacy policies, or practices of any third-party websites or services.',
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
                  '8. Disclaimers',
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
                  "[App Name] is provided on an 'as-is' and 'as-available' basis. We make no warranties, express or implied, regarding the app's operation or the information, content, materials, or products included in the app.",
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
                  '9. Limitation of Liability',
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
                  'To the fullest extent permitted by law, [App Name] will not be liable for any indirect, incidental, special, consequential, or punitive damages arising from or related to your use of the app.',
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
                  '10. Governing Law',
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
                  'These Terms shall be governed by and construed in accordance with the laws of [Your State/Country], without regard to its conflict of law principles.',
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
                  '11. Contact Information',
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
                  'If you have any questions about these Terms and Conditions, please contact us at naveensnlbe@gmail.com.',
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
