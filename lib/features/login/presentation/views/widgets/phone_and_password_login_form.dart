
import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/core/utils/app_validator/app_validator.dart';
import 'package:workify_user/features/login/presentation/view_model/login_cubit.dart';
import 'package:workify_user/features/login/presentation/view_model/login_states.dart';

import '../../../../../main_importants.dart';

class PhoneAndPasswordLoginForm extends StatelessWidget {
  const PhoneAndPasswordLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit , LoginStates>(
      builder: (context,state){
        var loginCubit = context.read<LoginCubit>();
        return Column(
          children: [
            const CustomSizedBox(height: 40,),
            CustomTextFormField(
              controller:  loginCubit.emailCon,
              keyboardType: TextInputType.emailAddress,
              hintText: LocaleKeys.userName.tr(),
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
              controller:  loginCubit.passwordCon,
              keyboardType: TextInputType.visiblePassword,
              hintText: context.tr(LocaleKeys.password),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(SvgImages.lock,),
              ),
              validator: (String? value) {
                return MyValidators.passwordValidator(value);
              },
              suffixIcon: IconButton(
                color: AppColors.greyColor2,
                icon: loginCubit.isPasswordVisible
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: () {
                  loginCubit.changePasswordVisible();
                },
              ),

              obscureText: loginCubit.isPasswordVisible,
            ),
          ],
        );
      },
    );
  }
}
