
 import 'package:flutter/material.dart';
import 'package:workify_user/features/profile/presentation/views/widgets/saved_jobs_widget.dart';
import 'package:workify_user/features/profile/presentation/views/widgets/support_widget.dart';
 import 'change_password_widget.dart';
import 'edit_personal_info_widget.dart';
 import 'my_reviews_widget.dart';

class ListTileList extends StatelessWidget {
  const ListTileList({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          EditPersonalInfoWidget(),
          SavedJobsWidget(),
          MyReviewsWidget(),
          ChangePasswordWidget(),
          SupportWidget(),

        ],
      ),
    );
  }
}
