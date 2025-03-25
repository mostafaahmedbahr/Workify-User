
import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Row(
        children: [
          SvgPicture.asset(SvgImages.logout),
          const CustomSizedBox(width: 4,),
          CustomText(text: LocaleKeys.logout.tr(),
          style: AppStyles.textStyle14W500Red,),
        ],
      ),
    );
  }
}
