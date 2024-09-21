import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iot_application/glass.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: 250,
          width: 400,
          child: const GlassMorphismWidget(
            height: 250,
            width: 300,
            box: Text(
              'Hello',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: 250,
          width: 400,
          child: const GlassMorphismWidget(
            height: 250,
            width: 300,
            box: Text(
              'Vanakam',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: 250,
          width: 400,
          child: const GlassMorphismWidget(
            height: 250,
            width: 300,
            box: Text(
              'Daa',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: 250,
          width: 400,
          child: const GlassMorphismWidget(
            height: 250,
            width: 300,
            box: Text(
              'Mapla',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        height: 180,
        pauseAutoPlayOnTouch: true,
        pauseAutoPlayOnManualNavigate: true,
        aspectRatio: 21 / 9,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.9,
      ),
    );
  }
}
