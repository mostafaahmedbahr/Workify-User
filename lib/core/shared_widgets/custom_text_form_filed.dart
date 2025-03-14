
import '../../main_importants.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? icon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffixIcon;
  final void Function()? onPressed;
  final void Function(String)? onChanged;
  final String? hintText;
  final String? labelText;
  final int? maxLines;
  final double? radius;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final Color? fillColor;
  final Color? borderColor;
  final Color? hintColor;

  const CustomTextFormField({
    Key? key,
    this.controller,
    this.obscureText,
    this.icon,
    this.prefixIcon,
    this.prefix,
    this.suffixIcon,
    this.onPressed,
    this.onChanged,
    this.hintText,
    this.labelText,
    this.maxLines,
    this.keyboardType,
    this.validator,
    this.readOnly,
    this.fillColor = AppColors.whiteColor, // Default fill color
    this.borderColor = const Color.fromRGBO(208, 208, 208, 1), // Default border color
    this.hintColor = const Color.fromRGBO(150, 150, 150, 1), // Default hint color
    this.radius = 10.0, // Default radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      readOnly: readOnly ?? false,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType ?? TextInputType.text,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: AppColors.mainGreenColor), // Consistent label style
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        prefixIcon: prefixIcon,
        prefix: prefix,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
          borderSide: BorderSide(
            color: borderColor ?? const Color.fromRGBO(208, 208, 208, 1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
          borderSide: BorderSide(
            color: borderColor ?? const Color.fromRGBO(208, 208, 208, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
          borderSide: BorderSide(
            color: borderColor ?? const Color.fromRGBO(208, 208, 208, 1),
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: hintColor ?? const Color.fromRGBO(150, 150, 150, 1),
        ),
      ),
    );
  }
}
