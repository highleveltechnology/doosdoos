import 'dart:developer';

import 'package:doos/features/auth/persentation/sign_in/widgets/or_line_widget.dart';
import 'package:doos/features/auth/persentation/sign_in/widgets/socail_sig_in_button.dart';
import 'package:doos/features/auth/persentation/widgets/app_bar_widget.dart';
import 'package:doos/features/auth/persentation/widgets/container_of_textform.dart';
import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:doos/src/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.witheColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: AppBarWidget(
                isBackButtonVisible: true,
                title: 'Sign In',
                onBackButtonPressed: () {
                  context.go(Routes.signUpScreen.path);
                },
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 24, left: 24),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Email",
                      textStyle: TextStyle(
                        color: AppColors.current.dialogTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    ContainerOfTextForm(
                      child: CustomTextFormField(
                        hint: '',
                        validator: (value) {},
                        borderRadius: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    //!Password
                    SizedBox(height: 20),
                    CustomText(
                      text: "Password",
                      textStyle: TextStyle(
                        color: AppColors.current.dialogTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    ContainerOfTextForm(
                      child: CustomTextFormField(
                        suffixIcon: IconButton(
                          color: AppColors.current.ayeColor,
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_outlined),
                        ),
                        hint: '',
                        validator: (value) {},
                        borderRadius: BorderSide.strokeAlignCenter,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          log('Forget Password');
                          context.push(Routes.forgetPassword.path);
                        },
                        child: CustomText(
                          text: 'Forget Password?',
                          textStyle: TextStyle(
                            color: AppColors.current.dialogTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    //!SingUp Button
                    CustomElevated(
                      text: 'Sign In',
                      press: () {},
                      btnColor: AppColors.current.signUpButtonColor,
                      borderRadius: 30,
                      hSize: 45,
                      wSize: 315,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.current.primaryTextColor,
                    ),
                    SizedBox(height: 5.h),
                    OrLineWidget(),
                    SizedBox(height: 10.h),
                    SocialSigInButton(
                      icon: Assets.images.googleLogo.image(
                        width: 24.w,
                        height: 24,
                      ),
                      text: 'Login with google',
                    ),
                    SizedBox(height: 10.h),
                    SocialSigInButton(
                      icon: Assets.images.facebookLogo.image(
                        width: 24.w,
                        height: 24,
                      ),
                      text: 'Login with Facebook',
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Don’t have an account?',
                            textStyle: TextStyle(
                              color: AppColors.current.dialogTextColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: FontFamily.montserrat,
                            ),
                          ),
                          SizedBox(width: 5.h),
                          InkWell(
                            onTap: () {
                              context.push(Routes.signUpScreen.path);
                            },
                            child: CustomText(
                              text: 'Sign Up',
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: FontFamily.montserrat,
                                color: AppColors.current.primaryTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
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
