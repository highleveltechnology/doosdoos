import 'package:doos/features/auth/persentation/otp/widgets/custom_otp_input.dart';
import 'package:doos/features/auth/persentation/widgets/app_bar_widget.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.witheColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100.h),
            AppBarWidget(
              isBackButtonVisible: true,
              title: 'OTP Verification',
              width: 42.w,
              onBackButtonPressed: () {
               context.go(Routes.forgetPassword.path);
                
              },
            ),
            SizedBox(height: 40.h),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Verify your account',
                      textStyle: AppTextStyles.s18BoldAppPrimary().copyWith(
                        color: AppColors.current.primaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.montserrat,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    CustomText(
                      maxLines: 2,
                      text:
                          'We sent Email with 6-digit OTP Verification Code\n to +1234567898',
                      textStyle: AppTextStyles.s13AppPrimary().copyWith(
                        color: AppColors.current.primaryTextColor,
                        fontWeight: FontWeight.w400,
                        height: 17.h,
                        fontFamily: FontFamily.montserrat,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomOtpInput(length: 4),
                    SizedBox(height: 30.h),
                    Center(
                      child: CustomText(
                        text: 'Resend Code',
                        textStyle: AppTextStyles.s16AppPrimary().copyWith(
                          color: AppColors.current.primaryTextColor,
                          fontWeight: FontWeight.w500,
                          height: 22.h,
                          fontFamily: FontFamily.montserrat,
                        ),
                      ),
                    ),
                    SizedBox(height: 64.h),
                    CustomElevated(
                      text: 'Submit',
                      press: () {
                         context.push(Routes.createNewPassword.path);
                      },
                      btnColor: AppColors.current.primaryTextColor,
                      fontSize: 16,
                      borderRadius: 30,
                      fontWeight: FontWeight.w500,
                      hSize: 45,
                      wSize: 315,
                      textColor: AppColors.current.witheColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
