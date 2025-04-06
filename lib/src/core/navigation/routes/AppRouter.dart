import 'package:doos/features/get_start/screen/get_start_screen_one.dart';
import 'package:doos/features/get_start/screen/get_start_screen_two.dart';
import 'package:doos/features/splash/screen/splash_screen.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();
  static final GlobalKey<NavigatorState> _parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();
  static GoRouter config = GoRouter(initialLocation:Routes.splash.path ,routes: [
    GoRoute(
      path:Routes.splash.path,
      name: Routes.splash.name,
      builder:(context,state){
        return SplashScreen();
      }
    ),
    GoRoute(path: Routes.getStartOneScreen.path,
      name: Routes.getStartOneScreen.name,
      builder: (context, state) {
        return const GetStartScreenOne();
      }),
     GoRoute(path: Routes.getStartTwoScreen.path,
      name: Routes.getStartTwoScreen.name,
      builder: (context, state) {
        return  GetStartScreenTwo();
      }),
  ]);
}
