import 'package:flutter/material.dart';
import 'package:workify_user/core/shared_widgets/custom_text.dart';
import 'package:workify_user/core/utils/app_styles/app_styles.dart';

import '../../../../../core/shared_widgets/custom_sized_box.dart';
import '../../../../../core/utils/app_colors/app_colors.dart';
import '../../../../../core/utils/app_images/png_images.dart';

class NotificationsListItem extends StatelessWidget {
  const NotificationsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainGreenColor,
                  ),
                  child: Image.asset(PngImages.testPerson,fit: BoxFit.cover,),
                ),
                const CustomSizedBox(width: 4,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "CAT",style: AppStyles.textStyle16W500Black,),
                          CustomText(text: "1 day ago",style: AppStyles.textStyle12W500Gray3,),
                        ],
                      ),
                      CustomText(text: "closed the position ui/ux designer",
                        style: AppStyles.textStyle12W500Black.copyWith(
                          color: AppColors.redColor,
                        ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
              color: AppColors.greyColor2
          ),
          // const Divider(
          //   color: AppColors.greyColor2,
          // ),
        ],
      ),
    );
  }
}
