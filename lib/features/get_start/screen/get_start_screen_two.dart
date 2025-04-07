import 'package:doos/features/get_start/models/get_start.dart';
import 'package:doos/features/get_start/widgets/row_item.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/core/widget/custom_elevated.dart';
import 'package:doos/src/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GetStartScreenTwo extends StatelessWidget {
  GetStartScreenTwo({super.key});
  List<GetStart> howWidget = [
    GetStart(
      title: 'Browse & Choose',
      description:
          'Explore a variety of available cars\n and select the  one that suits your trip.',
      type: "how",
    ),
    GetStart(
      title: "Book Instantly",
      description:
          'Set your rental dates,  choose pickup &\n return options, and confirm your booking.',
      type: "how",
    ),
    GetStart(
      title: "Meet & Drive",
      description:
          'Pick up the car from the host at \n the scheduled time and start your journey',
      type: "how",
    ),
    GetStart(
      title: 'Return & Review',
      description:
          'Drop off the car as agreed and leave a \nreview to help future renters.',
      type: "how",
    ),
  ];
  List<GetStart> whyChoose = [
    GetStart(
      title: 'Wide Selection',
      description:
          ' Find the perfect car for any trip,\n from economy to luxury.',
      type: "why",
    ),
    GetStart(
      title: 'Easy & Secure',
      description: 'Hassle-free booking with secure payments.',
      type: "why",
    ),
    GetStart(
      title: 'Affordable Prices',
      description: 'Competitive rates with no hidden fees.',
      type: "why",
    ),
    GetStart(
      title: 'Reliable Hosts',
      description: 'Verified car owners for\n a trusted experience.',
      type: "why",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 71,bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //!How works
              CustomText(
                text: 'How Doos Doos Works',
                textStyle: TextStyle(
                  color: AppColors.current.primaryTextColor,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.montserrat,
                ),
              ),
              SizedBox(height: 18.h),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return RowItem(getStart: howWidget[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount: howWidget.length,
              ),
              SizedBox(height: 40.h),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: CustomText(
                  text: 'Why Choose Doos Doos?',
                  textStyle: TextStyle(
                    color: AppColors.current.primaryTextColor,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.montserrat,
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return RowItem(getStart: whyChoose[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount: whyChoose.length,
              ),
              SizedBox(height: 18.h),
              Center(
                child: CustomElevated(
                  text: 'Get Started',
                  press: () { 
                    context.push(Routes.signUpScreen.path);
                  },
                  btnColor: AppColors.current.primaryTextColor,
                  textColor: AppColors.current.witheColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  wSize: 315,
                  hSize: 45,
                  borderRadius: 90,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
