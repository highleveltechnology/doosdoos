import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerOfTextForm extends StatelessWidget {
  const ContainerOfTextForm({super.key,required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 304.w,
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.current.dialogTextColor, width: 1),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: child,
    );
  }
}
