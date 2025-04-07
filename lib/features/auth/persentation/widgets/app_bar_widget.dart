import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({
    super.key,
    this.isBackButtonVisible = false,
    required this.title,
    this.onBackButtonPressed,
     this.width=86,
  });
  bool isBackButtonVisible = false;
  final String title;
  final VoidCallback? onBackButtonPressed;
  final double width;
  @override
  Widget build(BuildContext context) {
    return isBackButtonVisible == true
        ? Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  onBackButtonPressed!();
                },
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.current.primaryTextColor,
                  ),
                  child: Center(
                    child: Icon(
                      color: AppColors.current.witheColor,
                      size: 20.sp,
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
              ),
              SizedBox(width: width),
              CustomText(
                text: title,
                fontSize: 28.sp,
                fontFamily: FontFamily.cormorant,
                fontWeight: FontWeight.w700,
                color: AppColors.current.primaryTextColor,
              ),
            ],
          ),
        )
        : CustomText(
          text: title,
          fontSize: 28.sp,
          fontFamily: FontFamily.cormorant,
          fontWeight: FontWeight.w700,
          color: AppColors.current.primaryTextColor,
        );
  }
}
