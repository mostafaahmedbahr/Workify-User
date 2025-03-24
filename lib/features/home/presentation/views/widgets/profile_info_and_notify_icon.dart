import '../../../../../core/shared_widgets/linear_percent.dart';
import '../../../../../main_importants.dart';
import '../../../../notifications/presentation/views/notifications_view.dart';

class ProfileInfoAndNotifyIcon extends StatelessWidget {
  const ProfileInfoAndNotifyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.mainGreenColor,
              ),
              child: Image.asset(PngImages.testPerson),
            ),
            const CustomSizedBox(width: 6,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CustomText(text: "Hi, Mostafa Ahmed",
                    style: AppStyles.textStyle16W500Black,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: LinearPercentWidget(
                    percentText: "",
                    percent: 0.2,
                  ),
                ),
              ],
            ),

          ],
        ),
        GestureDetector(
            onTap: (){
              AppNav.customNavigator(context: context,
                screen: const NotificationsView(),
              );
            },
            child: SvgPicture.asset(SvgImages.notify)),
      ],
    );
  }
}
