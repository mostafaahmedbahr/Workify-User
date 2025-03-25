import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';

class DownloadCv extends StatelessWidget {
  const DownloadCv({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        SvgPicture.asset(SvgImages.download),
        const CustomSizedBox(width: 3,),
        Text(LocaleKeys.downloadMyCV.tr(),
        style: AppStyles.textStyle14W500Black,),
      ],
    );
  }
}
