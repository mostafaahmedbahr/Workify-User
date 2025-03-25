import 'package:flutter/material.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/features/profile/presentation/views/widgets/logout_and_lang.dart';
import 'package:workify_user/features/profile/presentation/views/widgets/profile_data_name_bio_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 60),
        child: Column(
          children: [
            LogoutAndLang(),
            CustomSizedBox(height: 20,),
            ProfileDataNameBioImage(),
          ],
        ),
      ),
    );
  }
}
