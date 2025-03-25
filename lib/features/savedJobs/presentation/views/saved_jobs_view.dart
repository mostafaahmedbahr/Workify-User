import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workify_user/features/savedJobs/presentation/views/widgets/saved_jobs_views_body.dart';

import '../../../../lang/locale_keys.dart';

class SavedJobsViews extends StatelessWidget {
  const SavedJobsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.savedJobs.tr()),
      ),
      body: const SavedJobsViewsBody(),
    );
  }
}
