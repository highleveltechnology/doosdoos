import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/resource/styles/colors.dart';
import 'package:doos/src/core/preferences/constants.dart';
import 'package:doos/src/core/widget/button.dart';
import 'package:doos/src/generated/l10n.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog(
      {Key? key,
      this.titleMessage,
      this.bodyMessage,
      this.onClick,
      this.actionTitle,
      this.secondClick,
      this.secondTitle,
      this.icon})
      : super(key: key);
  final String? titleMessage;
  final String? bodyMessage;
  final String? actionTitle;
  final Widget? icon;
  final Function? onClick;
  final Function? secondClick;
  final String? secondTitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            margin: EdgeInsets.only(top: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.w),
              color: AppColors.current.witheColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Icon(Icons.clear)),
                    ),
                    // SizedBox(
                    //     width: double.infinity,
                    //     child: SvgPicture.asset(
                    //       Assets.images.circleInfo.path,
                    //       color: AppColors.current.primaryColor,
                    //     )),
                    const SizedBox(height: 10),
                    if(icon!=null)
                    icon!,
                    const SizedBox(height: 10),
                    Text(
                      titleMessage ?? '',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.s17Primary()
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      children: [
                        if ((bodyMessage ?? "").isNotEmpty)
                          Text(
                            bodyMessage ?? "",
                            textAlign: TextAlign.center,
                            style: AppTextStyles.s15Primary()
                                .copyWith(color: opacityBlack),
                          ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                            fun: () {
                              onClick?.call();
                              Navigator.pop(context);
                            },
                            backColor: AppColors.current.primaryColor,
                            widthVal: width(context) * .8,
                            heightVal: height(context) * .06,
                            // borderColor: opacityBlack,
                            // borderWidth: 1,
                            raduis: 10,
                            childVal: Text(
                              actionTitle??S.current.confirm,
                              style: AppTextStyles.s17White().copyWith(),
                            )),
                        SizedBox(height: 10),
                        CustomButton(
                            fun: () {
                              if (secondClick != null) secondClick!();
                              Navigator.pop(context);
                            },
                            widthVal: width(context) * .8,
                            heightVal: height(context) * .06,
                            borderColor: opacityBlack,
                            borderWidth: 1,
                            raduis: 10,
                            childVal: Text(
                              secondTitle ?? S.current.cancel,
                              style: AppTextStyles.s15White().copyWith(
                                  color: opacityBlack.withOpacity(.5)),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
