import '../../../../../main_importants.dart';

class WhiteLogo extends StatelessWidget {
  const WhiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return       Positioned(
        left: 20,
        top: 80,
        child:
        SvgPicture.asset(SvgImages.
        whiteLogo,height: 83,width: 83,));
  }
}
