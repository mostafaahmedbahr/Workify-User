import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';
import 'list_tile_list_item.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileListItem(
      leadingImage: SvgImages.support,
      title: LocaleKeys.support.tr(),
      onTap: (){},
    );
  }
}
