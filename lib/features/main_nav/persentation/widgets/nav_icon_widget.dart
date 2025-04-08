import 'package:doos/features/main_nav/persentation/cubit/main_nav_cubit.dart';
import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavIcon extends StatelessWidget {
  final Widget icon;
  final int index;
  final String label;
  final VoidCallback? onTap;
  const NavIcon({
    super.key,
    required this.index,
    required this.label,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool active = BlocProvider.of<MainNavCubit>(context).selectedTab == index;
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //!Icon
           icon,
           SizedBox(height: 5.h), 
           //!label
          Text(
            label,
            style: AppTextStyles.s15Primary().copyWith(
                color: active
                    ? AppColors.current.witheColor
                    : AppColors.current.secondaryTextColor),
          ),
        ],
      ),
    );
  }
}