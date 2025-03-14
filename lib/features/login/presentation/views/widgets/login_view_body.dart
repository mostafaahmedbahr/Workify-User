
import 'package:flutter/material.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/features/login/presentation/views/widgets/phone_and_password_login_form.dart';
import 'create_new_account_line.dart';
import 'forget_password_line.dart';
import 'login_button.dart';
import 'login_texts.dart';
import 'logo.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: const [
          Logo(),
          LoginTexts(),
          PhoneAndPasswordLoginForm(),
          ForgetPasswordLine(),
         CustomSizedBox(height: 32,),
         LoginButton(),
          CustomSizedBox(height: 32,),
          CreateNewAccountLine(),
        ],
      ),
    );
  }
}
