   import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workify_user/core/utils/app_colors/app_colors.dart';
import 'package:workify_user/features/register/presentation/views/register_widgets/register_view_body.dart';
import 'package:workify_user/lang/locale_keys.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.register.tr()),
        backgroundColor: AppColors.offWhiteColor,
      ),
      body:  const RegisterViewBody() ,
    );
  }
}
