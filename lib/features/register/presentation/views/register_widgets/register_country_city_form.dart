import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:workify_user/core/shared_widgets/custom_drop_down.dart';
import 'package:workify_user/lang/locale_keys.dart';

class RegisterCountryCityForm extends StatelessWidget {
  const RegisterCountryCityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropdown<String>(
          value: "A", // Default selected value
          items: ["A", "B", "C"], // List of items
          onChanged: (v) {
            print('Selected: $v'); // Handle selection
          },
          hint: LocaleKeys.country.tr(), // Hint text
          itemDisplayBuilder: (String value) {
            return value; // Return the item as a String
          },
        ),
      ],
    );
  }
}