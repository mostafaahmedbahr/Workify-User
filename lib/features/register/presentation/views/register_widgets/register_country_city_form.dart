import 'package:easy_localization/easy_localization.dart';
 import 'package:workify_user/core/shared_widgets/custom_drop_down.dart';

import '../../../../../main_importants.dart';

class RegisterCountryCityForm extends StatelessWidget {
  const RegisterCountryCityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSizedBox(height: 20,),
        CustomDropdown<String>(
          value: null,
          items: const ["A", "B", "C"],
          onChanged: (v) {

          },
          hint: LocaleKeys.country.tr(),
          itemDisplayBuilder: (String value) {
            return value;
          },
        ),
        const CustomSizedBox(height: 20,),
        CustomDropdown<String>(
          value: null,
          items: const ["A", "B", "C"],
          onChanged: (v) {

          },
          hint: LocaleKeys.city.tr(),
          itemDisplayBuilder: (String value) {
            return value;
          },
        ),
      ],
    );
  }
}