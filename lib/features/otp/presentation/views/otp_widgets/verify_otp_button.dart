import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/custom_button.dart';
import 'package:workify_user/core/shared_widgets/custom_text.dart';

import '../../../../../core/utils/app_styles/app_styles.dart';
import '../../../../../lang/locale_keys.dart';

class VerifyOtpButton extends StatelessWidget {
  const VerifyOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        btnText: CustomText(
          text: LocaleKeys.verify.tr(),
          style: AppStyles.textStyle16W500White,
        ),
        onPressed: (){

        },
    );
  }
}
