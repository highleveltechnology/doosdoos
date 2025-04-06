import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../resource/styles/app_colors.dart';

Widget networkImage(
    {required String url,
    required BoxBorder border,
    Widget? placeHolder,
    double? width,
    double? height,
    Color? bg,
    required BorderRadiusGeometry radius,
    BoxFit? fit}) {
  return url.isNotEmpty
      ? CachedNetworkImage(
          imageUrl: url,
          width: width ?? double.infinity,
          height: height ?? double.infinity,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              color: bg ?? AppColors.current.editTextColor,
              border: border,
              borderRadius: radius,
              image: DecorationImage(
                image: imageProvider,
                fit: fit ?? BoxFit.fill,
              ),
            ),
          ),
          placeholder: (context, url) =>
              placeHolder ??
              Container(
                  width: width ?? double.infinity,
                  height: height ?? double.infinity,
                  decoration: BoxDecoration(
                    border: border,
                    borderRadius: radius,
                    color: bg ?? AppColors.current.editTextColor,
                  ),
                  child: Row(
                    children: [
                      const Expanded(flex: 2, child: SizedBox()),
                      // Expanded(
                      //   flex: 1,
                      //   child: SizedBox(
                      //     height: double.infinity,
                      //     child: SvgPicture.asset(
                      //       Assets.images.moeen_providerLogo.path,
                      //       fit: BoxFit.fitWidth,
                      //     ),
                      //   ),
                      // ),
                      const Expanded(flex: 2, child: SizedBox()),
                    ],
                  )
                  // SpinKitCircle(
                  //   color: AppColors.current.primaryColor,
                  //   size: 50.0,
                  // )
                  ),
          errorWidget: (context, url, error) =>
              placeHolder ??
              Container(
                  width: width ?? double.infinity,
                  height: height ?? double.infinity,
                  decoration: BoxDecoration(
                    border: border,
                    borderRadius: radius,
                    color: bg ?? AppColors.current.editTextColor,
                  ),
                  child: Row(
                    children: [
                      const Expanded(flex: 2, child: SizedBox()),
                      // Expanded(
                      //   flex: 1,
                      //   child: SizedBox(
                      //     height: double.infinity,
                      //     child: SvgPicture.asset(
                      //       Assets.images.moeen_providerLogo.path,
                      //       fit: BoxFit.fitWidth,
                      //     ),
                      //   ),
                      // ),
                      const Expanded(flex: 2, child: SizedBox()),
                    ],
                  )
                  // SizedBox(
                  //   width: 10,
                  //   child: Container(
                  //     width:10,
                  //     color: Colors.lightGreen,
                  //     // child: SvgPicture.asset(
                  //     //   Assets.images.logoHome,
                  //     //   // fit: BoxFit.fitWidth,
                  //     //   // width:(width ?? double.infinity)*1/4,
                  //     // ),
                  //   ),
                  // )

                  ),
        )
      : placeHolder ??
          Container(
              width: width ?? double.infinity,
              height: height ?? double.infinity,
              decoration: BoxDecoration(
                border: border,
                borderRadius: radius,
                color: bg ?? AppColors.current.editTextColor,
              ),
              child: Row(
                children: [
                  const Expanded(flex: 2, child: SizedBox()),
                  // Expanded(
                  //   flex: 1,
                  //   child: SizedBox(
                  //     height: double.infinity,
                  //     child: SvgPicture.asset(
                  //       Assets.images.moeen_providerLogo.path,
                  //       fit: BoxFit.fitWidth,
                  //     ),
                  //   ),
                  // ),
                  const Expanded(flex: 2, child: SizedBox()),
                ],
              ));
}
