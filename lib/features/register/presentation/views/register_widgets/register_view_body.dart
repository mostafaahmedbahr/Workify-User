import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/custom_sized_box.dart';
import 'package:workify_user/features/register/presentation/views/register_widgets/register_country_city_form.dart';
import 'package:workify_user/features/register/presentation/views/register_widgets/register_name_email_phone_form.dart';
import 'package:workify_user/features/register/presentation/views/register_widgets/upload_profile_image.dart';
import 'package:workify_user/features/start/presentation/views/widgets/start_register_button.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          UploadProfileImage(),
          CustomSizedBox(height: 28,),
          RegisterNameEmailPhoneForm(),
          RegisterCountryCityForm(),
          // RegisterPasswordForm(),
          // RegisterButton(),
        ],
      ),
    );
  }
}
