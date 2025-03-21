import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
 import 'package:workify_user/features/selectAge/presentation/views/select_age_widgets/select_age_view_body.dart';

import '../../../../lang/locale_keys.dart';

class SelectAgeView extends StatelessWidget {
  const SelectAgeView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.yourAge.tr()),
      ),
      body: const SelectAgeViewBody(),

    );
  }
}
