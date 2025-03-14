import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/features/login/presentation/views/login_view.dart';

import '../../../../../main_importants.dart';

class StartLoginButton extends StatelessWidget {
  const StartLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 114,
      left: 20,
      right: 20,
      child: CustomButton(
        btnText: Text(LocaleKeys.login.tr(),
          style: AppStyles.textStyle16W500White,),
        onPressed: (){
          AppNav.customNavigator(context: context,
              screen: const LoginView(),
          );
        },
      ),
    );
  }
}
