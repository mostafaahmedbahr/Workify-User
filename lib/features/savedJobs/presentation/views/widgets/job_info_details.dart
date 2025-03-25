import '../../../../../main_importants.dart';

class JobInfoDetails extends StatelessWidget {
  const JobInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(PngImages.testImage,
          height:60 ,
          width: 60 ,
          fit: BoxFit.cover,
        ),
        const CustomSizedBox(width: 8,),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Junior UI/UX Designer",
                    style: AppStyles.textStyle16W600Black.copyWith(
                      color: AppColors.greenColor,
                    ),),
                  const CustomText(text: "Ferrari",
                      style: AppStyles.textStyle12W500Black),
                  Row(
                    children: [
                      SvgPicture.asset(SvgImages.location),
                      const CustomText(text: "calefornia, america",
                          style: AppStyles.textStyle12W500Gray3),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(SvgImages.savedJobs2,
                    colorFilter: const ColorFilter.mode(AppColors.mainGreenColor,
                        BlendMode.srcIn),),
                  CustomText(text: "5 days ago",
                    style: AppStyles.textStyle10W500White.copyWith(
                      color: AppColors.mainGreenColor,
                    ),),
                ],
              ),
            ],
          ),
        ),


      ],
    );
  }
}
