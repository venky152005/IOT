import 'package:flutter/material.dart';
import 'package:iot_application/views/widgets/BarChart/bar_graph.dart';

// ignore: must_be_immutable
class BarChartWidget extends StatelessWidget {
  BarChartWidget({super.key});

  List<double> weeksummary = [
    4.55,
    7.32,
    53.32,
    23.4,
    54.5,
    30.56,
    77.69,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.width * 0.95,
        child: MyBarGraph(
          weeksummary: weeksummary,
        ),
      ),
    );
  }
}
