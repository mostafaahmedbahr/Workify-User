
import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/features/login/presentation/views/widgets/logo.dart';

import '../../../../main_importants.dart';
import 'otp_widgets/otp_texts.dart';
import 'otp_widgets/pin_code_fields_widget.dart';
import 'otp_widgets/resend_code_widget.dart';
import 'otp_widgets/verify_otp_button.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.otp.tr()),
      ),
      body:   const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(

        children: [
          Logo(),
          OtpTexts(),
          CustomSizedBox(height: 50,),
          PinCodeFieldsWidget(),
          CustomSizedBox(height: 20,),
          ResendCodeWidget(),
          Spacer(),
          VerifyOtpButton(),
          CustomSizedBox(height: 40,),
        ],
        ),
      ),
    );
  }
}
