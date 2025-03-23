import 'package:flutter/services.dart';
  import 'package:easy_localization/easy_localization.dart';
 import 'package:workify_user/features/layout/presentation/views/widgets/bottom_navigation_bar_widget.dart';
   import '../../../../main_importants.dart';
import '../view_model/layout_cubit.dart';
import '../view_model/layout_states.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  LayoutViewState createState() => LayoutViewState();
}

class LayoutViewState extends State<LayoutView> {
  // Variable to track the time of the last back press
  DateTime? _lastPressed;

  @override
  Widget build(BuildContext context) {
    debugPrint(CacheTokenManger.userToken);
    debugPrint("Layout View");
    return BlocBuilder<LayoutCubit, LayoutStates>(
      builder: (context, state) {
        var layoutCubit = LayoutCubit.get(context);
        return PopScope(
          canPop: false,
          onPopInvoked: _onPopInvoked, // Pass the method as the callback
          child: Scaffold(
            body: layoutCubit.screens[LayoutCubit.pageIndex],
            bottomNavigationBar: const BottomNavigationBarWidget(),
          ),
        );
      },
    );
  }

  // Handle back press and exit the app
  void _onPopInvoked(bool didPop) {
    if (didPop) {
      return; // Exit the app if the back button was pressed a second time
    }

    DateTime now = DateTime.now();
    if (_lastPressed == null || now.difference(_lastPressed!) > const Duration(seconds: 2)) {
      // First press: show a message and update the time
      _lastPressed = now;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.tr(LocaleKeys.goBackExit)),
          duration: const Duration(seconds: 2),
        ),
      );
    } else {
      // Second press within 2 seconds: close the app
      SystemNavigator.pop(); // Close the app
    }
  }
}
