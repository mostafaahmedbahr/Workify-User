import 'package:easy_localization/easy_localization.dart';
 import 'package:workify_user/main_importants.dart';

class OtpTexts extends StatelessWidget {
  const OtpTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: LocaleKeys.confirmYourPhoneNumber.tr(),
          style: AppStyles.textStyle24W600Black,
        ),
        CustomText(text: LocaleKeys.sendVerificationCode.tr(),
          style: AppStyles.textStyle14W500Gray,
        ),
        CustomText(text: "01110690299",
          style: AppStyles.textStyle14W500Gray.copyWith(
            color: AppColors.mainGreenColor
          ),
        ),
      ],
    );
  }
}
