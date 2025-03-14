import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class StartRegisterButton extends StatelessWidget {
  const StartRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return       Positioned(
      bottom: 40,
      left: 20,
      right: 20,
      child: CustomButton(
        btnColor: Colors.transparent,
        borderColor: AppColors.whiteColor,
        btnText: Text(LocaleKeys.register.tr(),
          style: AppStyles.textStyle16W500White,),
        onPressed: (){},
      ),
    );
  }
}
