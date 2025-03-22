import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearPercentWidget extends StatelessWidget {
  const LinearPercentWidget({super.key, required this.percentText, required this.percent});
  final String percentText;
  final double percent;
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 10.0,
      percent: percent,
      trailing:   Text(
        percentText,
        style:   const TextStyle(fontSize: 12.0),
      ),
      barRadius : const Radius.circular(4),
      backgroundColor: Colors.white,
      progressColor: Colors.black,
    );
  }
}
