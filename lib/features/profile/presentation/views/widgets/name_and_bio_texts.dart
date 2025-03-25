
import '../../../../../main_importants.dart';

class NameAndBioTexts extends StatelessWidget {
  const NameAndBioTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSizedBox(height: 10,),
        Text("Hi, Sherif Mohamed",style: AppStyles.textStyle14W500Black.copyWith(
          color: AppColors.darkGreenColor,
        ),),
        const CustomSizedBox(height: 4,),
        const Text("UI/UX Designer - 1 Years,  Months",style: AppStyles.textStyle12W500Gray3),
      ],
    );
  }
}
