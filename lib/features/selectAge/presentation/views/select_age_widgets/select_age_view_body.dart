 import 'package:flutter/material.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';

import '_next_button.dart';
import 'number_picker_widget.dart';

class SelectAgeViewBody extends StatelessWidget {
  const SelectAgeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            NumberPickerWidget(),
            CustomSizedBox(height: 80,),
            Spacer(),
            NextButton(),
            CustomSizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
