
import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';
import '../../../../selectInteresting/presentation/views/select_your_interesting_view.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: Text(LocaleKeys.next.tr(),
        style: AppStyles.textStyle16W500White,),
      onPressed: (){
        AppNav.customNavigator(context: context,
          screen: const SelectYourInterestingView(),
        );
      },
    );
  }
}
