import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/container_search_widget.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/features/home/presentation/views/widgets/profile_info_and_notify_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
      child: Column(
        children: [
          ProfileInfoAndNotifyIcon(),
          CustomSizedBox(height: 24,),
          ContainerSearchWidget(),
          CustomSizedBox(height: 24,),
          

        ],
      ),
    );
  }
}
