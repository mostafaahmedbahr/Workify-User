import 'package:flutter/material.dart';
import 'package:workify_user/features/start/presentation/views/widgets/join_us_text.dart';
import 'package:workify_user/features/start/presentation/views/widgets/start_login_button.dart';
import 'package:workify_user/features/start/presentation/views/widgets/register_button.dart';
import 'package:workify_user/features/start/presentation/views/widgets/start_text.dart';
import 'package:workify_user/features/start/presentation/views/widgets/white_logo.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        WhiteLogo(),
        StartText(),
        JoinUsText(),
        StartLoginButton(),
        RegisterButton(),


      ],
    );
  }
}
