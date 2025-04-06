import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImageWidget extends StatelessWidget {
  CircleImageWidget({
    Key? key,
    required this.image,
    this.size = 60,
    this.isLocal = true,
  }) : super(key: key);
  final String image;
  final double size;
  bool isLocal = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.h,
      width: size.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.current.transparent,
        shape: BoxShape.circle,
      ),
      child: isLocal == true
          ? Image.asset(image, fit: BoxFit.cover)
          : Image.network(
              image,
              fit: BoxFit.cover,
            ),
    );
  }
}
