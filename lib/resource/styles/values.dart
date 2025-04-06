import 'package:doos/src/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


double headTitle = 27.sp;
double smallTitle = 14.sp;
double smallText = 12.sp;
double subTitle = 16.sp;
double title20 = 20.sp;
double title18 = 18.sp;
double text28 = 28.sp;
double space8 = 8.h;
double space20 = 20.h;
double space40 = 40.h;
List navLabelsAr = [
  'الرئيسية',
  'بحث',
  'رسائل',
  'الحساب',
];

List navLabelsEn = [
  'Home',
  'Search',
  'Chats',
  'Profile',
];

bool isArb(BuildContext context) =>
    context.read<AppBloc>().languageCode == 'ar';
