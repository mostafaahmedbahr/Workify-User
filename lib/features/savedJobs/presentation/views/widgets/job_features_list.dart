import '../../../../../main_importants.dart';

class JobFeaturesList extends StatelessWidget {
  const JobFeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 22,
      child: ListView.separated(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
            height: 22,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.greyColor5
            ),
            child: const CustomText(
              text: "Full Time",
              style: AppStyles.textStyle10W500Black,
            ),
          );
        },
        separatorBuilder: (context,index){
          return const CustomSizedBox(width: 12,);
        },
      ),
    );
  }
}
