
import 'package:easy_localization/easy_localization.dart';

import '../../../../../main_importants.dart';

class RegisterNameEmailPhoneForm extends StatelessWidget {
  const RegisterNameEmailPhoneForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          keyboardType: TextInputType.text,
          hintText: LocaleKeys.userName.tr(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(SvgImages.profile,),
          ),
          validator: (String? value) {
            return MyValidators.displayNameValidator(value);
          },
        ),
        const CustomSizedBox(height: 20,),
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          hintText: LocaleKeys.email.tr(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(SvgImages.email,),
          ),
          validator: (String? value) {
            return MyValidators.emailValidator(value);
          },
        ),
        const CustomSizedBox(height: 20,),
        CustomTextFormField(
          keyboardType: TextInputType.phone,
          hintText: LocaleKeys.phone.tr(),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(SvgImages.mobile,),
          ),
          validator: (String? value) {
            return MyValidators.displayNameValidator(value);
          },
        ),
      ],
    );
  }
}
