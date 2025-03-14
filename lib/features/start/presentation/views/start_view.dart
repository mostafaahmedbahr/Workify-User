import 'package:workify_user/features/start/presentation/views/widgets/start_view_body.dart';
import '../../../../main_importants.dart';
class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PngImages.startBG), // Path to your image
            fit: BoxFit.cover, // Cover the entire screen
          ),
        ),
        child: const StartViewBody(),
      ),
    );
  }
}