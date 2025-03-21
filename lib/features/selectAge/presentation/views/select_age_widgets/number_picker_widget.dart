import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:workify_user/core/utils/app_colors/app_colors.dart';
import 'package:workify_user/features/selectAge/presentation/view_model/select_age_cubit.dart';
import 'package:workify_user/features/selectAge/presentation/view_model/select_age_states.dart';

class NumberPickerWidget extends StatefulWidget {
  const NumberPickerWidget({super.key});

  @override
  State<NumberPickerWidget> createState() => _NumberPickerWidgetState();
}

class _NumberPickerWidgetState extends State<NumberPickerWidget> {
  int _currentValue = 3;
  final double _t = 0.5;
  @override
  Widget build(BuildContext context) {
    final Decoration a = BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: AppColors.mainGreenColor,
        width: 2,
      ),
    );

    final Decoration b = BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.mainGreenColor, AppColors.whiteColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
    BoxShadow(
    color: Colors.black.withOpacity(0.1),
        blurRadius: 10,
    offset: const Offset(0, 5),
    ),
    ],
    );

    // Interpolate between the two decorations
    final Decoration interpolatedDecoration = Decoration.lerp(a, b, _t)!;
    return BlocBuilder<SelectAgeCubit , SelectAgeStates>(
      builder: (context,state){
        return Center(
          child: NumberPicker(
            itemHeight: 100,
            itemWidth: 100,
            textStyle:const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,

            ),
            decoration : interpolatedDecoration,
            selectedTextStyle:const TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.w700,
              color: AppColors.mainGreenColor,

            ),
            //value: SelectAgeCubit.get(context).currentValue,
            value: _currentValue,
            minValue: 0,
            maxValue: 100,
            onChanged: (value) => setState(() => _currentValue = value),
          ),
        );
      },

    );
  }
}

