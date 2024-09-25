import 'package:iot_application/views/widgets/BarChart/individual_bar.dart';

class BarData {
  late final double sunamount;
  late final double monamount;
  late final double tueamount;
  late final double wedamount;
  late final double thuamount;
  late final double friamount;
  late final double satamount;

  BarData({
    required this.sunamount,
    required this.monamount,
    required this.tueamount,
    required this.wedamount,
    required this.thuamount,
    required this.friamount,
    required this.satamount,
  });

  List<IndividualBar> barData = [];

  void intializeBarData() {
    barData = [
      IndividualBar(x: 0, y: sunamount),
      IndividualBar(x: 1, y: monamount),
      IndividualBar(x: 2, y: tueamount),
      IndividualBar(x: 3, y: wedamount),
      IndividualBar(x: 4, y: thuamount),
      IndividualBar(x: 5, y: friamount),
      IndividualBar(x: 6, y: satamount),
    ];
  }
}
