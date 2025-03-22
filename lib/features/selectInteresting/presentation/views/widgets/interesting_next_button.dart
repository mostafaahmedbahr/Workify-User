

import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';
 import '../../../../uploadCv/presentation/views/upload_cv_view.dart';

class InterestingNextButton extends StatelessWidget {
  const InterestingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: Text(LocaleKeys.next.tr(),
        style: AppStyles.textStyle16W500White,),
      onPressed: (){
        AppNav.customNavigator(context: context,
          screen: const UploadCvView(),
        );
      },
    );
  }
}

