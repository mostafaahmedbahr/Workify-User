import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/features/uploadCv/presentation/views/widgets/upload_cv_button.dart';
import 'package:workify_user/features/uploadCv/presentation/views/widgets/upload_cv_texts.dart';

import '../../../../../main_importants.dart';

class UploadCvMainContainer extends StatelessWidget {
  const UploadCvMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: DottedBorder(
        color: const Color.fromRGBO(41, 105, 241, 0.3),
        padding: const EdgeInsets.all(20),
        strokeWidth: 1,
          radius: const Radius.circular(10),
          dashPattern : const <double>[10, 10],
        child: const Column(
          children: [
            UploadCvTexts(),
            CustomSizedBox(height: 20,),
            UploadCvButton(),
          ],
        ),
      ),
    );
  }
}
