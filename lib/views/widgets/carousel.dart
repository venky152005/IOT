import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:iot_application/views/widgets/glass.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
    required this.frequency,
    required this.ampere,
    required this.temperature,
  });

  final String frequency;
  final String ampere;
  final String temperature;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 220,
              width: 400,
              child: GlassMorphismWidget(
                height: 220,
                width: 400,
                box: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        DateFormat.yMEd().format(DateTime.now()),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      const Text(
                        'Frequency',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.frequency,
                                style: const TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'khz',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 50,
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
                            height: 70,
                            width: 70,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            '15%',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'icons/graph_loss.png',
                            color: const Color(0xFFD9FE74),
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const Text(
                        'Less than yesterday',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 220,
              width: 400,
              child: GlassMorphismWidget(
                height: 220,
                width: 400,
                box: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        DateFormat.yMEd().format(DateTime.now()),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      const Text(
                        'Electricity',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.ampere,
                                style: const TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'kwh',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 50,
                                    fontFamily: 'ClashDisplay',
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'icons/charge.png',
                            color: const Color(0xFFD9FE74),
                            height: 70,
                            width: 70,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            '15%',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'icons/graph_loss.png',
                            color: const Color(0xFFD9FE74),
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const Text(
                        'Less than yesterday',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 220,
              width: 400,
              child: GlassMorphismWidget(
                height: 220,
                width: 400,
                box: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        DateFormat.yMEd().format(DateTime.now()),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      const Text(
                        'Temperature',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.temperature,
                                style: const TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '°C',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 50,
                                    fontFamily: 'ClashDisplay',
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'icons/celsius.png',
                            color: const Color(0xFFD9FE74),
                            height: 70,
                            width: 70,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            '15%',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'icons/graph_loss.png',
                            color: const Color(0xFFD9FE74),
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const Text(
                        'Less than yesterday',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 220,
              width: 400,
              child: GlassMorphismWidget(
                height: 220,
                width: 400,
                box: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        DateFormat.yMEd().format(DateTime.now()),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      const Text(
                        'Error',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                '-------',
                                style: TextStyle(
                                  color: Color(0xFFD9FE74),
                                  fontSize: 50,
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
                                    fontSize: 50,
                                    fontFamily: 'ClashDisplay',
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'icons/error.png',
                            color: const Color(0xFFD9FE74),
                            height: 70,
                            width: 70,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            '15%',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'icons/graph_loss.png',
                            color: const Color(0xFFD9FE74),
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                      const Text(
                        'Less than yesterday',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ].toList(),
          carouselController: _controller,
          options: CarouselOptions(
              pageSnapping: true,
              initialPage: 1,
              autoPlay: true,
              height: 220,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: true,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedSmoothIndicator(
            activeIndex: _currentIndex,
            count: 4,
            effect: const WormEffect(
              dotHeight: 12,
              dotWidth: 12,
              activeDotColor: Color(0xFFD9FE74),
              dotColor: Color(0xFFB9B8B8),
            ),
            onDotClicked: (index) {
              _controller.animateToPage(index);
            }),
      ],
    );
  }
}
