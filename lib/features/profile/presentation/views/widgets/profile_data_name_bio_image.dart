 import 'package:workify_user/features/profile/presentation/views/widgets/profile_image.dart';
import 'package:workify_user/main_importants.dart';

import 'name_and_bio_texts.dart';

class ProfileDataNameBioImage extends StatelessWidget {
  const ProfileDataNameBioImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileImage(),
        NameAndBioTexts(),
      ],
    );
  }
}
