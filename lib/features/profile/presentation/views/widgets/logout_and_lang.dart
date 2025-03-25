import 'package:flutter/material.dart';

import 'change_lang.dart';
import 'logout.dart';

class LogoutAndLang extends StatelessWidget {
  const LogoutAndLang({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:   EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Logout(),
          ChangeLang(),
        ],
      ),
    );
  }
}
