import 'package:flutter/material.dart';
 import 'package:workify_user/core/shared_widgets/linear_percent.dart';

class LinearProgress extends StatelessWidget {
  const LinearProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return  const LinearPercentWidget(
        percentText: "10.0%",
        percent: 0.1,
    );
  }
}
