
import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';
import 'list_tile_list_item.dart';

class EditPersonalInfoWidget extends StatelessWidget {
  const EditPersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileListItem(
          leadingImage: SvgImages.editProfile,
          title: LocaleKeys.editPersonalInfo.tr(),
          onTap: (){},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Divider(
            color: AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
