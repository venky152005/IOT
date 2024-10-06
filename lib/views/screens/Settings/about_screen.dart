import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/Settings/settings_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
        body: Container(
          margin: const EdgeInsets.all(15.0),
          child: const Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Our App',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ClashDisplay'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to [App Name]—your smart cleaning companion! Designed specifically for [Your Brand's] IoT vacuum machines, our app provides you with full control and convenience right at your fingertips.",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Features",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'ClashDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Remote Control : ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Start, stop, or pause your",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "vacuum from anywhere using your smartphone.",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Scheduling : ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Set cleaning schedules that fit",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "your lifestyle. Choose specific days and times for a perfectly clean home without lifting a finger.",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Real-Time Monitoring : ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Keep track of your",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "vacuum’s cleaning progress and receive notifications when it’s done or needs maintenance.",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Custom Cleaning Modes : ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Tailor your ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "vacuum’s cleaning experience with options for spot cleaning, edge cleaning, and more.",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Home Mapping : ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              " View the real-time map of",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ClashDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "your home’s layout and see which areas have been cleaned or need attention.",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Smart Integration",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'ClashDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Our app seamlessly integrates with popular smart home systems. Control your vacuum using voice commands through Alexa or Google Assistant, or sync it with other smart devices for a fully automated home cleaning routine.",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "User-Friendly Interface",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'ClashDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enjoy an intuitive design that makes navigation simple and straightforward. Whether you’re a tech-savvy user or just getting started, our app is designed for everyone.",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'ClashDisplay',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
