import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
 import 'package:workify_user/core/shared_widgets/custom_text.dart';
import 'package:workify_user/core/utils/app_colors/app_colors.dart';
import 'package:workify_user/core/utils/app_styles/app_styles.dart';
import 'package:workify_user/lang/locale_keys.dart';

class ForgetPasswordLine extends StatelessWidget {
  const ForgetPasswordLine({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        style: TextButton.styleFrom(
          alignment: Alignment.centerRight,
          foregroundColor: AppColors.mainGreenColor,
        ),
        child: CustomText(
          text: LocaleKeys.forgetPassword.tr(),
          style: AppStyles.textStyle12W500Gray3,
        ));
  }
}
