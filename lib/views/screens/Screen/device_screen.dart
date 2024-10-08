import 'package:flutter/material.dart';
import 'package:iot_application/views/screens/Screen/finded_device.dart';
import 'package:iot_application/views/screens/Screen/home_screen.dart';
import 'package:iot_application/views/screens/Settings/settings_screen.dart';
import 'package:iot_application/views/widgets/BarChart/bar_chart.dart';
import 'package:iot_application/views/widgets/glass.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                top: MediaQuery.of(context).size.height * 0.04,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Ultrasonic Generator',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                          fontFamily: 'ClashDisplay'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.98,
                      child: BarChartWidget(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GlassMorphismWidget(
                          height: MediaQuery.of(context).size.height * 0.0844,
                          width: MediaQuery.of(context).size.width * 0.46,
                          box: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  'Total Electricity',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'ClashDisplay',
                                      fontSize: 15),
                                ),
                              ),
                              Text(
                                '100 Kwh',
                                style: TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GlassMorphismWidget(
                          height: MediaQuery.of(context).size.height * 0.0844,
                          width: MediaQuery.of(context).size.width * 0.46,
                          box: const Column(
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
                                      fontSize: 15),
                                ),
                              ),
                              Text(
                                '10 Hours',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    GlassMorphismWidget(
                      height: MediaQuery.of(context).size.height * 0.22,
                      width: MediaQuery.of(context).size.width * 0.92,
                      box: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            child: Text(
                              textAlign: TextAlign.center,
                              '      Monthly Expenses',
                              style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'icons/arrow_down.png',
                                color: Colors.green,
                                height: 40,
                                width: 40,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    'December',
                                    style: TextStyle(
                                        fontFamily: 'ClashDisplay',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '100 . 5 kwh',
                                    style: TextStyle(
                                      fontFamily: 'ClashDisplay',
                                      fontSize: 15,
                                      color: Color.fromRGBO(100, 181, 246, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '100 Kwh',
                                style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 20,
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
                                height: 40,
                                width: 40,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    'November',
                                    style: TextStyle(
                                        fontFamily: 'ClashDisplay',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '156 . 3 kwh',
                                    style: TextStyle(
                                      fontFamily: 'ClashDisplay',
                                      fontSize: 15,
                                      color: Color.fromRGBO(100, 181, 246, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '200 Kwh',
                                style: TextStyle(
                                  fontFamily: 'ClashDisplay',
                                  fontSize: 20,
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeWidget(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'icons/Home.png',
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
                          'icons/Cleaner.png',
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
                          'icons/BarChart.png',
                          color: const Color(0xFFB9B8B8),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingsScreen(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'icons/Profile.png',
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
