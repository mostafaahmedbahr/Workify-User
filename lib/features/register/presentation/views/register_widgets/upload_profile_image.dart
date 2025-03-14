import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';

class UploadProfileImage extends StatelessWidget {
  const UploadProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 84,
            width: 84,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SvgPicture.asset(SvgImages.camera),
            )),
        const CustomSizedBox(width: 20,),
        Column(
          children: [
            CustomText(text: LocaleKeys.profilePhoto.tr(),
              style: AppStyles.textStyle16W500Black,),
            Row(
              children: [
                TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.mainGreenColor,
                    ),
                    child: CustomText(
                      text: LocaleKeys.change.tr(),
                      style: AppStyles.textStyle14W400Black,
                    )),
                TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.mainGreenColor,
                    ),
                    child: CustomText(
                      text: LocaleKeys.delete.tr(),
                      style: AppStyles.textStyle14W400Black.copyWith(
                        color: AppColors.redColor
                      ),
                    )),
              ],
            ),
          ],
        )
      ],
    );
  }
}
