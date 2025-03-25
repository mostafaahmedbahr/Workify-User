import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/container_search_widget.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/features/savedJobs/presentation/views/widgets/saved_jobs_list.dart';

class SavedJobsViewsBody extends StatelessWidget {
  const SavedJobsViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          ContainerSearchWidget(),
          CustomSizedBox(height: 14,),
          SavedJobsList(),
        ],
      ),
    );
  }
}
