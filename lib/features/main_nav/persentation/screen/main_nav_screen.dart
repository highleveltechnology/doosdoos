import 'package:doos/features/home/persentation/cubit/home_cubit.dart';
import 'package:doos/features/main_nav/persentation/cubit/main_nav_cubit.dart';
import 'package:doos/features/main_nav/persentation/widgets/nav_icon_widget.dart';
import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/colors.dart';
import 'package:doos/src/core/navigation/routes/routes_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MainNavScreen extends StatelessWidget {
  const MainNavScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: child,
      bottomNavigationBar: BlocBuilder<MainNavCubit, MainNavState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.current.primaryTextColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: black.withValues(alpha: .1),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            height: 90.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                NavIcon(
                  index: 0,
                  icon: Assets.images.home.svg(width: 24.w, height: 24.h),
                  label: "Home",
                  onTap: () {
                    context.go(Routes.homeScreen.path);
                    BlocProvider.of<MainNavCubit>(context).selectTab(0);
                  },
                ),
                NavIcon(
                  index: 1,
                  icon: Assets.images.inBox.svg(width: 24.w, height: 24.h),
                  label: "Inbox",
                  onTap: () {
                    BlocProvider.of<MainNavCubit>(context).selectTab(1);
                  },
                ),
                NavIcon(
                  index: 2,
                  icon: Assets.images.rental.svg(width: 24.w, height: 24.h),
                  label: "Rental",
                  onTap: () {
                    BlocProvider.of<MainNavCubit>(context).selectTab(2);
                  },
                ),
                NavIcon(
                  index: 3,
                  icon: Assets.images.favoirt.svg(width: 24.w, height: 24.h),
                  label: "Favorite",
                  onTap: () {
                    BlocProvider.of<MainNavCubit>(context).selectTab(3);
                  },
                ),
                NavIcon(
                  index: 4,
                  icon: Assets.images.account.svg(width: 24.w, height: 24.h),
                  label: "Account",
                  onTap: () {
                    BlocProvider.of<MainNavCubit>(context).selectTab(4);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
