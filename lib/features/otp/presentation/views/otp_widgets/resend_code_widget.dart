import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';


class ResendCodeWidget extends StatelessWidget {
  const ResendCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: LocaleKeys.resendCode.tr(),
          style: AppStyles.textStyle12W500Black,),
          const CustomSizedBox(width: 5,),
          CustomText(text: "0:20",
      style: AppStyles.textStyle14W500Gray.copyWith(
      color: AppColors.mainGreenColor
      ),
          ),
        ],
      ),
    );
  }
}
