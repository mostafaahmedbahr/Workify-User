import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 45,
          color: AppColors.greenColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.completed.tr(),style: AppStyles.textStyle10W500White,),
                Text(LocaleKeys.cv.tr(),style: AppStyles.textStyle10W500White,),
              ],
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.mainGreenColor,
          ),
          child: Image.asset(PngImages.testPerson,fit: BoxFit.cover,),
        ),
      ],
    );
  }
}
