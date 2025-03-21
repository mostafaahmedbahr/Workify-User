import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';
import '../../../../otp/presentation/views/otp_view.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: Text(LocaleKeys.register.tr(),
        style: AppStyles.textStyle16W500White,),
      onPressed: (){
        AppNav.customNavigator(context: context,
          screen: const OtpView(),
        );
      },
    );
  }
}
