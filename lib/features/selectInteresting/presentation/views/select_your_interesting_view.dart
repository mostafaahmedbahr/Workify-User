import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workify_user/features/selectInteresting/presentation/views/widgets/select_your_interesting_view_body.dart';

import '../../../../lang/locale_keys.dart';

class SelectYourInterestingView extends StatelessWidget {
  const SelectYourInterestingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.selectYourInteresting.tr()),
      ),
      body: const SelectYourInterestingViewBody(),
    );
  }
}
