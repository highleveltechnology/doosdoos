import 'package:doos/features/get_start/models/get_start.dart';
import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/src/core/local/responsive_text.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowItem extends StatelessWidget {
  const RowItem({super.key, required this.getStart});
  final GetStart getStart;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!Icon
        getStart.type == "how"
            ? Assets.images.checkedPng.image(width: 50.w, height: 50.h,)
            : Assets.images.starPng.image(width: 50.w, height: 50.h),
        SizedBox(width: 10.w),
        //! Column for title and description
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: getStart.title,
              textStyle: TextStyle(
                fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 15),
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: FontFamily.montserrat,
              ),
            ),
            SizedBox(width: 50.h),
            CustomText(
              softWrap: true,
              maxLines: 2,
              text: getStart.description,
              textStyle: AppTextStyles.s13AppPrimary().copyWith(
                fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 12),
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.montserrat,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
