import 'dart:developer';

import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GetStartScreenOne extends StatelessWidget {
  const GetStartScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);
    log(currentLocale.toString());
    return Scaffold(
      backgroundColor: AppColors.current.primaryTextColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.getStart.image(fit: BoxFit.fill),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomText(
                    maxLines: 2,
                    text: 'Drive or Earn – Your Car, Your Choice!',
                    textStyle: AppTextStyles.s11Black().copyWith(
                      fontSize: 27.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.current.witheColor,
                      fontFamily: FontFamily.montserrat,
                    ),
                  ),
                  CustomText(
                    maxLines: 2,
                    text:
                        'Rent a car or share yours effortlessly. A secure and seamless experience for all.',
                    textStyle: AppTextStyles.s11Black().copyWith(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffFFFFFF),
                      fontFamily: FontFamily.montserrat,
                    ),
                  ),
                  SizedBox(height: 72.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Center(
                      child: CustomElevated(
                        text: 'Get Started',
                        press: () {
                          context.push(Routes.getStartTwoScreen.path);
                        },
                        btnColor: AppColors.current.witheColor,
                        textColor: AppColors.current.primaryTextColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        borderRadius: 90,
                        wSize: 315,
                        hSize: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
