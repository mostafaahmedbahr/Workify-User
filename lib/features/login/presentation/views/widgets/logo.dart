
import '../../../../../main_importants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70),
      child: SvgPicture.asset(
        SvgImages.logo,height: 76,width: 100,),
    );
  }
}
