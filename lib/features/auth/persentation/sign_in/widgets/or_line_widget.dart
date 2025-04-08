import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrLineWidget extends StatelessWidget {
  const OrLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 142.w,
            margin: const EdgeInsets.only(left: 5, right: 15),
            child:  Divider(color:AppColors.current.orLineColor, height: 36, thickness: .5),
          ),
        ),
        Text("OR", style: TextStyle(fontSize: 18.sp, color:AppColors.current.orLineColor)),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 5, right: 15),
            child: Divider(color: AppColors.current.orLineColor, height: 36.h, thickness: .5),
          ),
        ),
      ],
    );
  }
}
