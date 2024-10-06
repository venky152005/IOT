import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iot_application/views/screens/Settings/about_screen.dart';
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        // SliderWidget(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
