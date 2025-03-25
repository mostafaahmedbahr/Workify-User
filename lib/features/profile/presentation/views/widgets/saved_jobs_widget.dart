import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/features/savedJobs/presentation/views/saved_jobs_view.dart';

import '../../../../../main_importants.dart';
import 'list_tile_list_item.dart';

class SavedJobsWidget extends StatelessWidget {
  const SavedJobsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileListItem(
          leadingImage: SvgImages.savedJobs,
          title: LocaleKeys.savedJobs.tr(),
          onTap: (){
            AppNav.customNavigator(context: context,
              screen: const SavedJobsViews(),
            );
          },
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
