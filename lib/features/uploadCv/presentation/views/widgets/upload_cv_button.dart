import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class UploadCvButton extends StatelessWidget {
  const UploadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomButton(
      btnColor: Colors.white,
      borderColor: AppColors.mainGreenColor,
      btnText: Text(LocaleKeys.uploadFile.tr(),
        style: AppStyles.textStyle16W500Green,),
      onPressed: (){
        // AppNav.customNavigator(context: context,
        //   screen: const RegisterView(),
        // );
      },
    );
  }
}
