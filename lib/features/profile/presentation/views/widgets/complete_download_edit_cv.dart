import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/core/utils/app_colors/app_colors.dart';
import 'package:workify_user/features/selectInteresting/presentation/views/widgets/linear_progress.dart';

import '../../../../../core/shared_widgets/linear_percent.dart';
import 'complete_cv_and_percent.dart';
import 'download_edit_cv.dart';
import 'linear_percent_profile_widget.dart';

class CompleteDownloadEditCv extends StatelessWidget {
  const CompleteDownloadEditCv({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.whiteColor,
        ),
        child: const Column(
          children: [
            CompleteCvAndPercent(),
            CustomSizedBox(height: 8,),
            LinearPercentProfileWidget(),
            CustomSizedBox(height: 16,),
            DownloadEditCv(),
          ],
        ),
      ),
    );
  }
}
