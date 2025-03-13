



import '../../../../main_importants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    );

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(builder: (context) =>
        //   CacheTokenManger.userToken!=null ? const LayoutView():
        //   const OnBoardingView()), // Your next screen
        // );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint(CacheTokenManger.userToken);
    // debugPrint("SplashView");
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: ScaleTransition(
          scale: _animation,
          child: Center(
            child: Image.asset(PngImages.logo), // Your logo asset
          ),
        ),
      ),
    );
  }
}
