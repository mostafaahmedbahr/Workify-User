



import '../../main_importants.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.threeArchedCircle(
        size: 50, color: AppColors.mainGreenColor,
      ),
    );
  }
}
