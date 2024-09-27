import 'package:flutter/material.dart';
import 'package:iot_application/views/widgets/glass.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282725),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'About Ultrasonic Generator',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 25,
                        fontFamily: 'ClashDisplay'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset(
                          'images/cleaning.png',
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 64,
                          fontFamily: 'ClashDisplay',
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFD9FE74),
                          shadows: [
                            Shadow(
                              blurRadius: 20.0,
                              color: const Color(0xFFD9FE74).withOpacity(0.8),
                              offset: const Offset(0, 0),
                            ),
                            Shadow(
                              blurRadius: 20.0,
                              color: const Color(0xFFD9FE74).withOpacity(0.8),
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: GlassMorphismWidget(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.90,
                box: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'icons/home_icon.png',
                        color: const Color(0xFFB9B8B8),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'icons/vaccum-cleaner.png',
                        color: const Color(0xFFB9B8B8),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'icons/home_icon.png',
                        color: const Color(0xFFB9B8B8),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'icons/wifi-router.png',
                        color: const Color(0xFFB9B8B8),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'icons/profile_person.png',
                        color: const Color(0xFFB9B8B8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
