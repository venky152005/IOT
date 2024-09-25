import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/device_screen.dart';
import 'package:iot_application/views/widgets/glass.dart';
import 'package:iot_application/views/widgets/gridview.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/modern-styled-small-entryway.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFF000000).withOpacity(0.9),
                ),
              ),
              const Positioned(
                top: 30,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Ultrasonic Generator',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 25),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GridViewWidget()
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DeviceWidget(),
                            ),
                          );
                        },
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
      ),
    );
  }
}
