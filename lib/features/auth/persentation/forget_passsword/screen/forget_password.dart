import 'package:doos/features/auth/persentation/widgets/app_bar_widget.dart';
import 'package:doos/features/auth/persentation/widgets/container_of_textform.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:doos/src/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.witheColor,
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: AppBarWidget(
              width: 48.w,
              isBackButtonVisible: true,
              title: 'Forget Password',
              onBackButtonPressed: () {
                context.go(Routes.signInScreen.path);
              },
            ),
          ),
          CustomText(
            maxLines: 2,
            text:
                "Please enter email address or phone number\n to reset your password ",
            textStyle: TextStyle(
              color: AppColors.current.dialogTextColor,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: const EdgeInsets.only(right: 24, left: 24),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Email/phone number",
                    textStyle: TextStyle(
                      color: AppColors.current.dialogTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  ContainerOfTextForm(
                    child: CustomTextFormField(
                      hint: '',
                      validator: (value) {},
                      borderRadius: BorderSide.strokeAlignCenter,
                    ),
                  ),
                  SizedBox(height: 64.h),
                  CustomElevated(
                    text: 'Submit',
                    press: () {
                      context.push(Routes.OtpScreen.path);
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
    );
  }
}
