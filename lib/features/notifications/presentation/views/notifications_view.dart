import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workify_user/features/notifications/presentation/views/widgets/notifications_view_body.dart';
import '../../../../lang/locale_keys.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.notifications.tr()),
      ),
      body: NotificationsViewBody(),
    );
  }
}
