import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class UploadCvTexts extends StatelessWidget {
  const UploadCvTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: LocaleKeys.uploadYourCvMsg1.tr(),
          style: AppStyles.textStyle16W500Black,),
        const CustomSizedBox(height: 10,),
        CustomText(text: LocaleKeys.uploadYourCvMsg2.tr(),
          style: AppStyles.textStyle12W500Gray3,),
      ],
    );
  }
}
