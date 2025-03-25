
import 'package:flutter/material.dart';
import 'package:workify_user/features/savedJobs/presentation/views/widgets/saved_jobs_list_item.dart';

class SavedJobsList extends StatelessWidget {
  const SavedJobsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
          return const SavedJobsListItem();
          }
      ),
    );
  }
}
