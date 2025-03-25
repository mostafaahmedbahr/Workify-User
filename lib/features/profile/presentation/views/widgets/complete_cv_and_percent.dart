import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';

class CompleteCvAndPercent extends StatelessWidget {
  const CompleteCvAndPercent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(LocaleKeys.completeMyCV.tr(),
        style: AppStyles.textStyle14W600Black,),
        const Text("12%",
          style: AppStyles.textStyle14W600Black,),
      ],
    );
  }
}
