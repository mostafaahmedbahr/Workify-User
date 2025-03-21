import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/features/selectAge/presentation/views/select_age_view.dart';
import '../../../../../main_importants.dart';

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
          AppNav.customNavigator(context: context,
            screen: const SelectAgeView(),

          );
        },
    );
  }
}
