import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  List images = [
    'images/generator1.jpg',
    'images/generator1.jpg',
    'images/generator1.jpg',
    'images/generator1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 4,
      itemBuilder: (context, index) => PositionWidget(
        link: images[index],
      ),
    );
  }
}

class PositionWidget extends StatelessWidget {
  final String link;

  const PositionWidget({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Image.asset(
            link,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
