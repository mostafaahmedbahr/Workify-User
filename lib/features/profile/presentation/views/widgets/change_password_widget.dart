import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';
import 'list_tile_list_item.dart';

class ChangePasswordWidget extends StatelessWidget {
  const ChangePasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileListItem(
          leadingImage: SvgImages.lock,
          title: LocaleKeys.changePassword.tr(),
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
