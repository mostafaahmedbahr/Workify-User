import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workify_user/core/utils/app_images/svg_images.dart';

class UploadCvImage extends StatelessWidget {
  const UploadCvImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(SvgImages.cvImage);
  }
}
