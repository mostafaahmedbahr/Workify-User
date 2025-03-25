import '../../../../../main_importants.dart';
import 'job_features_list.dart';
import 'job_info_details.dart';

class SavedJobsListItem extends StatelessWidget {
  const SavedJobsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.whiteColor,
        ),
        child: Column(
          children: [
            JobInfoDetails(),

      const CustomSizedBox(height: 10,),
            const JobFeaturesList(),

          ],
        ),
      ),
    );
  }
}
