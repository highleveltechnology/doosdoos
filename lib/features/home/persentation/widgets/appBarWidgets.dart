import 'package:doos/features/home/persentation/cubit/home_cubit.dart';
import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        debugPrint('🔄 State: $state');
        if (state is HomeLoading) return CircularProgressIndicator();
        if (state is HomeLoaded) {
          debugPrint('📍 UI Address: ${state.address}');
          return Text(state.address);
        }
        if (state is HomeLoaded) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Assets.images.pinLocation.svg(width: 30.h, height: 30.h),
              Text(
                state.address.toString(),
                style: TextStyle(
                  color: AppColors.current.primaryTextColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        } else if (state is HomeError) {
          return Text('Error: ${state.message}');
        } else {
          return Text('Unknown state: $state');
        }
        // return state is HomeLoaded
        //     ? Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         //Assets.images.pinLocation.svg(width: 30.h, height: 30.h),
        //         Text(
        //           state.address.toString(),
        //           style: TextStyle(
        //             color: AppColors.current.primaryTextColor,
        //             fontSize: 20.sp,
        //             fontWeight: FontWeight.w500,
        //           ),
        //         ),
        //       ],
        //     )
        //     : Row(
        //       children: [
        //         Text(
        //           'UAE,Sharjah',
        //           style: TextStyle(
        //             color: AppColors.current.primaryTextColor,
        //             fontSize: 20.sp,
        //             fontWeight: FontWeight.w500,
        //           ),
        //         ),
        //       ],
        //     );
      },
    );
  }
}
