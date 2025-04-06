
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SussesDialog extends StatelessWidget {
  const SussesDialog(
      {Key? key,
      this.titleMessage,
      this.bodyMessage,
      this.onClick,
      this.btnMessage})
      : super(key: key);
  final String? titleMessage;
  final String? bodyMessage;
  final String? btnMessage;
  final GestureTapCallback? onClick;

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
                color: AppColors.current.witheColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      // LocalWidget(widget: Assets.images.celebrate.svg()),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        titleMessage ?? '',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.s17Primary()
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Icon(Icons.clear)),
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
