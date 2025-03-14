
import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/features/login/presentation/views/login_view.dart';
import '../../../../../main_importants.dart';

class LoginTextsLine extends StatelessWidget {
  const LoginTextsLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: LocaleKeys.alreadyHaveAnAccount.tr(),
          style: AppStyles.textStyle12W500Gray3,
        ),
        const CustomSizedBox(width: 5,),
        TextButton(
            onPressed: (){
              AppNav.customNavigator(context: context, screen: const LoginView());
            },
            style: TextButton.styleFrom(
              foregroundColor: AppColors.mainGreenColor,
            ),
            child: CustomText(
              text: LocaleKeys.login.tr(),
              style: AppStyles.textStyle12W500Gray3.copyWith(
                color: AppColors.mainGreenColor,
              ),
            )),
      ],
    );
  }
}
