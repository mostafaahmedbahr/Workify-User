 import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class UploadCvFinishButton extends StatelessWidget {
  const UploadCvFinishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: Text(LocaleKeys.finish.tr(),
        style: AppStyles.textStyle16W500White,),
      onPressed: (){
        // AppNav.customNavigator(context: context,
        //   screen: const UploadCvView(),
        // );
      },
    );
  }
}
