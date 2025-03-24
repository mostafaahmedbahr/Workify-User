import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';
import 'notifications_list_item.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
      false ? NoDataWidget(
          image: SvgImages.noNotifications,
          text: LocaleKeys.noNotificationsYet.tr() ,
      ):
      ListView.builder(
        itemBuilder: (context,index){
          return const NotificationsListItem();
        },
        itemCount: 4,
    );
  }
}
