import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/resource/styles/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              margin: EdgeInsets.only(top: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.w),
                color: AppColors.current.errorTextColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          message ?? '',
                          textAlign: TextAlign.start,
                          style: AppTextStyles.s17White()
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Icon(
                              Icons.clear,
                              color: white,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
