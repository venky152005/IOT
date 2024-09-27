import 'package:flutter/material.dart';
import 'package:iot_application/views/widgets/BarChart/bar_chart.dart';
import 'package:iot_application/views/widgets/glass.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
              top: 40,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Ultrasonic Generator',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30,
                        fontFamily: 'ClashDisplay'),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 290,
                    width: MediaQuery.of(context).size.width * 0.98,
                    child: BarChartWidget(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GlassMorphismWidget(
                        height: 74,
                        width: 190,
                        box: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Total Electricity',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'ClashDisplay',
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              '100 Kwh',
                              style: TextStyle(
                                color: Color(0xFFD9FE74),
                                fontFamily: 'ClashDisplay',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GlassMorphismWidget(
                        height: 74,
                        width: 190,
                        box: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Total Hours',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'ClashDisplay',
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              '10 Hours',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFD9FE74),
                                fontFamily: 'ClashDisplay',
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GlassMorphismWidget(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.92,
                    box: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          child: Text(
                            '      Monthly Expenses',
                            style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'icons/arrow_down.png',
                              color: Colors.green,
                              height: 50,
                              width: 50,
                            ),
                            const Column(
                              children: [
                                Text(
                                  'December',
                                  style: TextStyle(
                                      fontFamily: 'ClashDisplay',
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                                Text(
                                  '100 . 5 kwh',
                                  style: TextStyle(
                                    fontFamily: 'ClashDisplay',
                                    fontSize: 20,
                                    color: Color.fromRGBO(100, 181, 246, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              '100 Kwh',
                              style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'icons/arrow_up.png',
                              color: Colors.red,
                              height: 50,
                              width: 50,
                            ),
                            const Column(
                              children: [
                                Text(
                                  'November',
                                  style: TextStyle(
                                      fontFamily: 'ClashDisplay',
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                                Text(
                                  '156 . 3 kwh',
                                  style: TextStyle(
                                    fontFamily: 'ClashDisplay',
                                    fontSize: 20,
                                    color: Color.fromRGBO(100, 181, 246, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              '200 Kwh',
                              style: TextStyle(
                                fontFamily: 'ClashDisplay',
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
