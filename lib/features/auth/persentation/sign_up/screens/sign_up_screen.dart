import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:doos/features/auth/persentation/widgets/app_bar_widget.dart';
import 'package:doos/features/auth/persentation/widgets/container_of_textform.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:doos/src/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
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
                isBackButtonVisible: false,
                title: 'Sign Up',
                onBackButtonPressed: () {},
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //!Username
                    CustomText(
                      text: "Username",
                      textStyle: TextStyle(
                        color: AppColors.current.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.montserrat,
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
                    //!Phone number
                    SizedBox(height: 20),
                    CustomText(
                      text: "Phone Number",
                      textStyle: TextStyle(
                        color: AppColors.current.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.montserrat,
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
                    //!Email
                    SizedBox(height: 20),
                    CustomText(
                      text: "Email",
                      textStyle: TextStyle(
                        color: AppColors.current.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.montserrat,
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
                        color: AppColors.current.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.montserrat,
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

                    SizedBox(height: 20),
                    //!SingUp Button
                    CustomElevated(
                      text: 'Sign Up',
                      fontFamily: FontFamily.montserrat,
                      press: () {
                        context.go(Routes.homeScreen.path);
                      },
                      btnColor: AppColors.current.signUpButtonColor,
                      borderRadius: 30,
                      hSize: 45,
                      wSize: 315,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.current.primaryTextColor,
                    ),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {
                        context.push(Routes.signInScreen.path);
                      },
                      child: Center(
                        child: CustomText(
                          text: 'Do you have an account?',
                          textStyle: TextStyle(
                            color: AppColors.current.dialogTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          focusColor: AppColors.current.dialogTextColor,
                        ),
                        CustomText(
                          text:
                              "I agree to the Terms & Conditions and Privacy Policy of DOOS DOOS.",
                          textStyle: TextStyle(
                            color: AppColors.current.dialogTextColor,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
