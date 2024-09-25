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
        height: 290,
        width: MediaQuery.of(context).size.width * 0.98,
        child: MyBarGraph(
          weeksummary: weeksummary,
        ),
      ),
    );
  }
}
