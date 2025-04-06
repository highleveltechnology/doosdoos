import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.interactiveSelection = true,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.autoValidate = AutovalidateMode.onUserInteraction,
    this.isLastInput = false,
    this.readOnly = false,
    this.controller,
    required this.validator,
    this.borderRadius = 12,
    this.inputFormatters = const [],
    this.fontFamily = "Regular",
    this.align = TextAlign.start,
    this.maxLength,
    this.onTap,
  });

  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String hint, fontFamily;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText, interactiveSelection;
  final TextInputType? keyboardType;
  final AutovalidateMode autoValidate;
  final bool isLastInput, readOnly;
  final TextEditingController? controller;
  final FormFieldValidator validator;
  final double borderRadius;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign align;
  final int? maxLength;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      onTap: onTap,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
      controller: controller,
      autovalidateMode: autoValidate,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction:
          isLastInput ? TextInputAction.done : TextInputAction.next,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      textAlign: align,
      obscuringCharacter: "*",
      enableInteractiveSelection: interactiveSelection,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Color(0xff818898),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: fontFamily,
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.r),
          borderSide: BorderSide(
            width: 0.001.sh,
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.r),
          borderSide: BorderSide(
            width: 0.001.sh,
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.0015.sh,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(borderRadius.r)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0.0015.sh,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(borderRadius.r)),
      ),
    );
  }
}
