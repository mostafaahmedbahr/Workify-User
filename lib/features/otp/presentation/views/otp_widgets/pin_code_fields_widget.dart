import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:workify_user/main_importants.dart';

class PinCodeFieldsWidget extends StatelessWidget {
  const PinCodeFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        selectedColor : AppColors.mainGreenColor,
        selectedFillColor : AppColors.mainGreenColor,
        inactiveColor : AppColors.mainGreenColor,
        inactiveFillColor : AppColors.whiteColor,
        shape: PinCodeFieldShape.circle,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 56,
        fieldWidth: 56,
        activeFillColor: Colors.white,

      ),
      cursorColor: Colors.white,
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      //errorAnimationController: errorController,
      //controller: textEditingController,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        print(value);
        // setState(() {
        //   currentText = value;
        // });
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      }, appContext: context,
    );
  }
}
