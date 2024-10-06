import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_application/controllers/device_controller.dart';
import 'package:iot_application/views/screens/Screen/device_screen.dart';
import 'package:iot_application/views/screens/Screen/home_screen.dart';
import 'package:iot_application/views/screens/Settings/settings_screen.dart';
import 'package:iot_application/views/widgets/carousel.dart';
import 'package:iot_application/views/widgets/glass.dart';
import 'package:iot_application/views/widgets/timer.dart';

class FindDevice extends StatefulWidget {
  const FindDevice({super.key, required this.id});

  final String id;

  @override
  State<FindDevice> createState() => _FindDeviceState();
}

class _FindDeviceState extends State<FindDevice> {
  final deviceController = Get.put(DeviceController());
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      deviceController.getDeviceView(widget.id);
    });
  }

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
                top: 30,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Ultrasonic Generator',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 25),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Obx(
                      () {
                        return SliderWidget(
                          frequency:
                              deviceController.deviceView.value.frequency ??
                                  '0',
                          ampere:
                              deviceController.deviceView.value.ampere ?? '0',
                          temperature:
                              deviceController.deviceView.value.temperature ??
                                  '0',
                        );
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    const TimerWidget(),
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
                              builder: (context) => const HomeWidget(),
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
