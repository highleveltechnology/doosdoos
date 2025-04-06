import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/resource/styles/colors.dart';
import 'package:doos/src/core/validation/pattern.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  final double? raduis;
  final String hint;
  final TextInputAction? actionType;
  final bool clearEnable;
  final Function? onTap;
  final Function? onTapOutside;
  final Function? search;
  final String? pattern;
  final IconData? perfix;
  final Widget? perfixWidget;
  final Widget? suffixWiget;
  final bool isNumber;
  final bool isPhone;
  final bool enabled;
  final bool? confirmPass;
  final bool isRequired;
  final bool isPassword;
  final TextEditingController? forConfirmController;
  final TextInputType? type;
  final Function(String)? onChange;
  final String? emptyMessage;
  final String? errorMessage;
  final int? maxLenght;
  final TextEditingController textEditingController;
  const TextFieldWidget(
      {super.key,
      required this.hint,
      required this.textEditingController,
      this.pattern,
      this.emptyMessage,
      this.errorMessage,
      this.perfix,
      this.suffixWiget,
      this.isNumber = false,
      this.clearEnable = false,
      this.type,
      this.onChange,
      this.confirmPass,
      this.forConfirmController,
      this.enabled = true,
      this.isPassword = false,
      this.actionType,
      this.onTap,
      this.onTapOutside,
      this.search,
      this.isPhone = false,
      this.perfixWidget,
      this.isRequired = true,
      this.raduis,
      this.maxLenght});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool apperClear = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      enabled: widget.enabled,
      obscureText: widget.isPassword,
      obscuringCharacter: '✶',
      textInputAction: TextInputAction.done,
      onFieldSubmitted: (value) {
        if (widget.actionType == TextInputAction.done) {
          if (widget.search != null) {
            widget.search!();
          }
        }
      },
      keyboardType: widget.type,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
        if (widget.onTapOutside != null) {
          widget.onTapOutside!();
        }
      },
      onChanged: (val) {
        if (widget.onChange != null) {
          widget.onChange!(val);
        }
        setState(() {
          apperClear = val != '';
        });
      },
      style: AppTextStyles.s17Primary(),
      inputFormatters: [
        // LengthLimitingTextInputFormatter(length),
        if (widget.pattern == postiveNumber || widget.pattern == phonePattern)
          FilteringTextInputFormatter.digitsOnly
      ],
      validator: (value) {
        if (value!.isEmpty && widget.isRequired) {
          return "\u26A0 ${widget.emptyMessage}";
        } else if (!RegExp(widget.pattern!).hasMatch(value)) {
          return "\u26A0 ${widget.errorMessage}";
        } else if ((widget.confirmPass ?? false) &&
            value != widget.forConfirmController!.text) {
          return "\u26A0 ${widget.errorMessage}";
        } else {
          return null;
        }
      },
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      maxLength: widget.maxLenght,
      // maxLengthEnforcement: MaxLengthEnforcement.none,
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minHeight: 45.h, minWidth: 45.h),
        suffixIconConstraints: BoxConstraints(minHeight: 45.h, minWidth: 45.h),
        prefixIcon: widget.perfix != null
            ? InkWell(
                onTap: () {
                  if (widget.textEditingController.text != '') {
                    if (widget.perfix == Icons.search) {
                      FocusScope.of(context).unfocus();
                      if (widget.search != null) {
                        widget.search!();
                      }
                    }
                  }
                },
                child: Icon(widget.perfix, size: 24.w))
            : widget.perfixWidget,
        suffixIcon: widget.suffixWiget ??
            (widget.clearEnable || apperClear
                ? InkWell(
                    onTap: () {
                      widget.textEditingController.clear();
                      if (widget.onTap != null) {
                        widget.onTap!();
                      }
                    },
                    child: Icon(Icons.clear, size: 24.w))
                : null),
        // suffix: widget.suffixWiget,
        prefixStyle:
            AppTextStyles.s13Black().copyWith(color: black.withOpacity(.3)),
        isDense: true,
        hintText: widget.hint,
        filled: true,
        fillColor: white,
        hintStyle: AppTextStyles.s13Black()
            .copyWith(color: black.withOpacity(.3), fontSize: 15.sp),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: black.withOpacity(.3)),
            borderRadius: BorderRadius.circular(widget.raduis ?? 10)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: AppColors.current.primaryColor),
            borderRadius: BorderRadius.circular(widget.raduis ?? 10)),
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: AppColors.current.errorTextColor),
            borderRadius: BorderRadius.circular(widget.raduis ?? 10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: black.withOpacity(.3)),
            borderRadius: BorderRadius.circular(widget.raduis ?? 10)),
      ),
    );
  }
}
