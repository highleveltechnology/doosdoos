import 'package:doos/features/auth/persentation/auth_container.dart';
import 'package:doos/features/auth/persentation/forget_passsword/screen/create_new_passsword.dart';
import 'package:doos/features/auth/persentation/forget_passsword/screen/forget_password.dart';
import 'package:doos/features/auth/persentation/otp/screen/otp_screen.dart';
import 'package:doos/features/auth/persentation/sign_in/screen/sign_in_screen.dart';
import 'package:doos/features/auth/persentation/sign_up/screens/sign_up_screen.dart';
import 'package:doos/features/get_start/screen/get_start_screen_one.dart';
import 'package:doos/features/get_start/screen/get_start_screen_two.dart';
import 'package:doos/features/home/persentation/cubit/home_cubit.dart';
import 'package:doos/features/home/persentation/screen/home_screen.dart';
import 'package:doos/features/main_nav/persentation/cubit/main_nav_cubit.dart';
import 'package:doos/features/main_nav/persentation/screen/main_nav_screen.dart';
import 'package:doos/features/splash/screen/splash_screen.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:doos/src/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();
  static final GlobalKey<NavigatorState> _parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();
  static GoRouter config = GoRouter(
    initialLocation: Routes.splash.path,
    routes: [
      GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.name,
        builder: (context, state) {
          return SplashScreen();
        },
      ),
      GoRoute(
        path: Routes.getStartOneScreen.path,
        name: Routes.getStartOneScreen.name,
        builder: (context, state) {
          return const GetStartScreenOne();
        },
      ),

      GoRoute(
        path: Routes.getStartTwoScreen.path,
        name: Routes.getStartTwoScreen.name,
        builder: (context, state) {
          return GetStartScreenTwo();
        },
      ),
      GoRoute(
        path: Routes.signUpScreen.path,
        name: Routes.signUpScreen.name,
        builder: (context, state) {
          return const SignUpScreen();
        },
      ),
      GoRoute(
        path: Routes.signInScreen.path,
        name: Routes.signInScreen.name,
        builder: (context, state) {
          return const SignInScreen();
        },
      ),
      GoRoute(
        path: Routes.forgetPassword.path,
        name: Routes.forgetPassword.name,
        builder: (context, state) {
          return const ForgetPassword();
        },
      ),
      GoRoute(
        path: Routes.OtpScreen.path,
        name: Routes.OtpScreen.name,
        builder: (context, state) {
          return const OtpScreen();
        },
      ),
      GoRoute(
        path: Routes.createNewPassword.path,
        name: Routes.createNewPassword.name,
        builder: (context, state) {
          return const CreateNewPassword();
        },
      ),
      ShellRoute(
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) => getIt<MainNavCubit>(),
            child: MainNavScreen(child: child),
          );
        },
        navigatorKey: _shellNavigatorKey,
        routes: [
          GoRoute(
            path: Routes.homeScreen.path,
            name: Routes.homeScreen.name,
            builder: (context, state) {
              return BlocProvider(
                create: (context) => getIt<HomeCubit>()..getCurrentLocation(),
                child: const HomeScreen(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
