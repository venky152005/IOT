import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iot_application/views/screens/about_screen.dart';
import 'package:iot_application/views/screens/device_screen.dart';
import 'package:iot_application/views/screens/finded_device.dart';
import 'package:iot_application/views/widgets/glass.dart';
import 'package:iot_application/views/widgets/gridview.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Ultrasonic Generator',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 25),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: 250,
                          width: 400,
                          child: GlassMorphismWidget(
                            height: 250,
                            width: 400,
                            box: Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    DateFormat.yMEd().format(DateTime.now()),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  const Text(
                                    'About Device',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          Text(
                                            '100%',
                                            style: TextStyle(
                                              color: Color(0xFFD9FE74),
                                              fontSize: 60,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '',
                                            style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 60,
                                                fontFamily: 'ClashDisplay',
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                        'icons/heartbeat.png',
                                        color: const Color(0xFFD9FE74),
                                        height: 80,
                                        width: 80,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFB9B8B8),
                                                Color(0xFF282725)
                                              ]),
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'AboutScreen',
                                            style: TextStyle(
                                                fontFamily: 'ClashDisplay',
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Text(
                                    'Efficient',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // SliderWidget(),
                        const SizedBox(
                          height: 30,
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: GridViewWidget(),
                          ),
                        ),
                      ],
                    ),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeWidget(),
                              ),
                            );
                          },
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
                                builder: (context) => const FindDevice(id: ''),
                              ),
                            );
                          },
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutScreen(),
                              ),
                            );
                          },
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
      ),
    );
  }
}
