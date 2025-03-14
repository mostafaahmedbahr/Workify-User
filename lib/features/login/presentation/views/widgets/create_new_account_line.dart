
import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';
import '../../../../register/presentation/views/register_view.dart';

class CreateNewAccountLine extends StatelessWidget {
  const CreateNewAccountLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: LocaleKeys.haveAnAccount.tr(),
          style: AppStyles.textStyle12W500Gray3,
        ),
        const CustomSizedBox(width: 5,),
    TextButton(
        onPressed: (){
          AppNav.customNavigator(context: context, screen: RegisterView());
        },
    style: TextButton.styleFrom(
    foregroundColor: AppColors.mainGreenColor,
    ),
    child: CustomText(
    text: LocaleKeys.register.tr(),
    style: AppStyles.textStyle12W500Gray3.copyWith(
      color: AppColors.mainGreenColor,
    ),
    )),
      ],
    );
  }
}
