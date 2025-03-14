
import 'package:easy_localization/easy_localization.dart';
import 'package:workify_user/features/register/presentation/view_model/register_cubit.dart';
import 'package:workify_user/features/register/presentation/view_model/register_states.dart';

import '../../../../../main_importants.dart';

class RegisterPasswordForm extends StatelessWidget {
  const RegisterPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit , RegisterStates>(
      builder: (context,state){
        var registerCubit = context.read<RegisterCubit>();
        return Column(
          children: [
            const CustomSizedBox(height: 20,),
            CustomTextFormField(
              controller:  registerCubit.passCon,
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
                icon: registerCubit.isVisible
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: () {
                  registerCubit.changeSuffixIcon();
                },
              ),

              obscureText: registerCubit.isVisible,
            ),
            const CustomSizedBox(height: 20,),
            CustomTextFormField(
              controller:  registerCubit.confirmPassCon,
              keyboardType: TextInputType.visiblePassword,
              hintText: context.tr(LocaleKeys.confirmPassword),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(SvgImages.lock,),
              ),
              validator: (String? value) {
                return MyValidators.repeatPasswordValidator(
                  value: value,
                  password: registerCubit.passCon.text,
                );
              },
              suffixIcon: IconButton(
                color: AppColors.greyColor2,
                icon: registerCubit.isVisible2
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: () {
                  registerCubit.changeSuffixIcon2();
                },
              ),

              obscureText: registerCubit.isVisible2,
            ),
            const CustomSizedBox(height: 32,),
          ],
        );
      },
    );
  }
}
