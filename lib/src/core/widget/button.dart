
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resource/styles/app_colors.dart';

Widget customButton(String title, VoidCallback onPressed, {Color? color}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            // Change your radius here
            borderRadius: BorderRadius.circular(12.w),
          ),
        ),
        padding: MaterialStateProperty.all(EdgeInsets.all(15.w)),
        backgroundColor:
            MaterialStateProperty.all(color ?? AppColors.current.primaryColor)),
    child: Text(
      title,
      style: TextStyle(fontSize: 15.sp, color: Colors.white),
    ),
  );
}

Widget customButtonSmall(String title, VoidCallback onPressed, {Color? color}) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            // Change your radius here
            borderRadius: BorderRadius.circular(8.w),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h)),
        backgroundColor:
            MaterialStateProperty.all(color ?? AppColors.current.primaryColor)),
    child: Text(
      title,
      style: TextStyle(fontSize: 13.sp, color: Colors.white),
    ),
  );
}

Widget customButton13(String title, VoidCallback onPressed) {
  return TextButton(
    onPressed: onPressed,
    style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            // Change your radius here
            borderRadius: BorderRadius.circular(50.w),
          ),
        ),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25.w, vertical: 14.h)),
        backgroundColor:
            MaterialStateProperty.all(AppColors.current.primaryColor)),
    child: Text(
      title,
      style: AppTextStyles.s13AppSecondary(),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final Function fun;
  final Widget childVal;
  final Color? backColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? widthVal;
  final double? heightVal;
  final double? raduis;
  final double? padding;
  const CustomButton(
      {super.key,
      required this.fun,
      required this.childVal,
      this.backColor,
      this.widthVal,
      this.heightVal,
      this.raduis,
      this.padding,
      this.borderColor,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        fun();
      },
      style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: widthVal == null
              ? heightVal == null
                  ? null
                  : Size.fromHeight(heightVal!)
              : heightVal == null
                  ? Size.fromWidth(widthVal!)
                  : Size(widthVal!, heightVal!),
          padding: EdgeInsets.all(padding ?? 0),
          backgroundColor: backColor,
          shape: RoundedRectangleBorder(
            side: borderWidth == null
                ? BorderSide.none
                : BorderSide(width: borderWidth!, color: borderColor!),
            borderRadius: BorderRadius.circular(raduis ?? 0),
          )),
      child: childVal,
    );
  }
}


