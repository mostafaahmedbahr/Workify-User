import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class JoinUsText extends StatelessWidget {
  const JoinUsText({super.key});

  @override
  Widget build(BuildContext context) {
    return   Positioned(
      bottom: 250,
      left: 40,
      right: 40,
      child:CustomText(text: LocaleKeys.joinUs.tr(),
        style: AppStyles.textStyle16W500White,),);
  }
}
