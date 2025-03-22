import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workify_user/features/uploadCv/presentation/views/widgets/upload_cv_view_body.dart';

import '../../../../lang/locale_keys.dart';

class UploadCvView extends StatelessWidget {
  const UploadCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.uploadCv.tr()),
      ),
      body: const UploadCvViewBody(),
    );
  }
}
