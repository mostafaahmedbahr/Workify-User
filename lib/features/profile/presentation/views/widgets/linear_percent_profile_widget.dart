import 'package:flutter/material.dart';
import 'package:workify_user/core/shared_widgets/linear_percent.dart';
import 'package:workify_user/core/utils/app_colors/app_colors.dart';

class LinearPercentProfileWidget extends StatelessWidget {
  const LinearPercentProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const LinearPercentWidget(
      padding: EdgeInsets.symmetric(horizontal: 0),
      backgroundColor: AppColors.greyColor5,
      percentText: "",
      percent: 0.1,
    );
  }
}
