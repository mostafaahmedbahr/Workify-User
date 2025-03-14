import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class StartText extends StatelessWidget {
  const StartText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 280,
      left: 40,
      right: 40,
      child:CustomText(text: LocaleKeys.startText.tr(),
        style: AppStyles.textStyle40W600White,),);
  }
}
