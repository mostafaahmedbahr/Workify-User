import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/core/shared_widgets/custom_text.dart';
import 'package:workify_user/core/utils/app_colors/app_colors.dart';
import 'package:workify_user/core/utils/app_styles/app_styles.dart';
import 'package:workify_user/lang/locale_keys.dart';

class LoginTexts extends StatelessWidget {
  const LoginTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: LocaleKeys.welcome.tr(),
        style: AppStyles.textStyle36W600Green,),
        CustomText(text: LocaleKeys.back.tr(),
          style: AppStyles.textStyle36W600Green.copyWith(
            color: AppColors.blackColor,
          ),),
        const CustomSizedBox(height: 12,),
        CustomText(text: LocaleKeys.loginDesText.tr(),
          style: AppStyles.textStyle14W500Gray,
        textAlign: TextAlign.start,),
      ],
    );
  }
}
