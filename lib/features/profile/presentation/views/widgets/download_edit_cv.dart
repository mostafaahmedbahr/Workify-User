import 'package:flutter/cupertino.dart';

import 'download_cv.dart';
import 'edit_cv.dart';

class DownloadEditCv extends StatelessWidget {
  const DownloadEditCv({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DownloadCv(),
        EditCv(),
      ],
    );
  }
}
