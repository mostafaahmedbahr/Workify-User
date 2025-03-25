import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class EditCv extends StatelessWidget {
  const EditCv({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        SvgPicture.asset(SvgImages.userOctagon,
          colorFilter: const ColorFilter.mode(
              AppColors.greenColor, BlendMode.srcIn),
        ),
        const CustomSizedBox(width: 3,),
        Text(LocaleKeys.editMyCV.tr(),
          style: AppStyles.textStyle14W500Black.copyWith(
            color: AppColors.greenColor
          ),),
      ],
    );
  }
}
