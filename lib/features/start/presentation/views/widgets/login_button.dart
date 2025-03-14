import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 114,
      left: 20,
      right: 20,
      child: CustomButton(
        btnText: Text(LocaleKeys.login.tr(),
          style: AppStyles.textStyle16W500White,),
        onPressed: (){},
      ),
    );
  }
}
