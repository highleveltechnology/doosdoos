import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _goNext() async {
    await Future.delayed(const Duration(seconds: 5), () {
      context.push(Routes.getStartOneScreen.path);
    });
  }

  @override
  void initState() {
    super.initState();
    _goNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.primaryTextColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Assets.images.doosLogo.image(width: 375.w, height: 375.h)],
        ),
      ),
    );
  }
}
