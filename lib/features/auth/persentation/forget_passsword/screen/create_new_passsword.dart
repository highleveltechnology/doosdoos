import 'package:doos/features/auth/persentation/widgets/app_bar_widget.dart';
import 'package:doos/features/auth/persentation/widgets/container_of_textform.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:doos/src/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.witheColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            Center(
              child: AppBarWidget(
                width: 16.w,
                isBackButtonVisible: true,
                title: 'Create New Password',
                onBackButtonPressed: () {
                  context.go(Routes.OtpScreen.path);
                },
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
                      maxLines: 2,
                      text:
                          "Your new password must be diffrent from your\n old password",
                      textStyle: AppTextStyles.s13Black(),
                    ),
                    SizedBox(height: 20),
                    //!New Password
                    CustomText(
                      text: "New Password",
                      textStyle: TextStyle(
                        color: AppColors.current.primaryTextColor,
                        fontSize: 16,
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
                    SizedBox(height: 5.h),
                    CustomText(
                      maxLines: 2,
                      text:
                          "Password must have at least 6-12 character,a\n number and special character",
                      textStyle: AppTextStyles.s14Error().copyWith(
                        color: AppColors.current.dialogTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //!Confirm Password
                    SizedBox(height: 24.h),
                    CustomText(
                      text: "Confirm New Password",
                      textStyle: TextStyle(
                        color: AppColors.current.primaryTextColor,
                        fontSize: 16,
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
                    SizedBox(height: 5.h),
                    CustomText(
                      maxLines: 2,
                      text:
                          "Password must have at least 6-12 character,a\n number and special character",
                      textStyle: AppTextStyles.s14Error().copyWith(
                        color: AppColors.current.dialogTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    CustomElevated(
                      text: 'Reset Password',
                      press: () {},
                      btnColor: AppColors.current.signUpButtonColor,
                      borderRadius: 30,
                      hSize: 45,
                      wSize: 315,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.current.primaryTextColor,
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
