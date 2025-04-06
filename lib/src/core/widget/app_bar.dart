
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarAppBar extends StatelessWidget {
  const CarAppBar(
      {super.key, this.title, this.subTitle, this.back, this.rotated = false});
  final bool rotated;
  final String? title;
  final String? subTitle;
  final Function()? back;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Stack(children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // if ((title ?? "").isNotEmpty)
                //   Text(
                //     title!,
                //     style: AppTextStyles.s14AppSecondary()
                //         .copyWith(fontWeight: FontWeight.w700,fontSize: rotated?15:null),
                //   ),
                if ((subTitle ?? "").isNotEmpty)
                  Text(
                    subTitle!,
                    style: AppTextStyles.s20Primary().copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: rotated ? 15 : null),
                  )
              ],
            ),
          ),
          // InkWell(
          //     onTap: back ??
          //         () {
          //           Navigator.of(context).pop();
          //         },
          //     child: Assets.images.back.svg())
        ]));
  }
}
