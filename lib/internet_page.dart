import 'package:auto_route/auto_route.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/src/app/bloc/app_bloc.dart';
import 'package:doos/src/core/preferences/constants.dart';
import 'package:doos/src/core/widget/button.dart';
import 'package:doos/src/core/widget/dialogs/call_dialog.dart';
import 'package:doos/src/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
class InternetPage extends StatefulWidget {
  const InternetPage({super.key});

  @override
  State<InternetPage> createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.do_not_disturb,
              size: 50,
              color: AppColors.current.primaryColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'لا يوجد اتصال بالشبكة',
              style: AppTextStyles.s17AppPrimary()
                  .copyWith(fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            _isLoading == true
                ? CircularProgressIndicator()
                : CustomButton(
                    fun: () async {
                      setState(() {
                        _isLoading = true;
                      });
                      await InternetConnectionChecker.createInstance()
                          .connectionStatus
                          .then(
                        (value) async {
                          if (value == InternetConnectionStatus.connected) {
                            var appBloc = context.read<AppBloc>();
                            if (context.read<AppBloc>().isLogin) {
                              // if (appBloc.appSetting == null ||
                              //     appBloc.helpCenterData == null) {
                              //   await appBloc.initData();
                              // }
                              // context.router.push(HomeContainerRoute());
                              // context.router.popUntil((route) =>
                              //     route.settings.name ==
                              //     HomeContainerRoute().routeName);
                            } else {
                              // context.router
                              //     .replaceAll([const AuthContainer()]);
                              // context.router.popUntil((route) =>
                              //     route.settings.name ==
                              //     AuthContainer().routeName);
                            }
                          } else {
                            setState(() {
                              _isLoading = false;
                            });
                            CallDialog.showErrorDialog(
                                context, 'لا يوجد اتصال بالشبكة');
                          }
                        },
                      );
                    },
                    backColor: AppColors.current.primaryColor,
                    widthVal: width(context) * .6,
                    heightVal: 60.h,
                    raduis: 10,
                    childVal: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.current.try_again,
                          style: AppTextStyles.s17White()
                              .copyWith(fontSize: 17.sp),
                        ),
                      ],
                    ),
                  ),
            SizedBox(height: 20),
            CustomButton(
              fun: () async {
                // context.router.push(const DownloadsRoute());
              },
              backColor: AppColors.current.witheColor,
              widthVal: width(context) * .6,
              heightVal: 60.h,
              raduis: 10,
              borderColor: AppColors.current.primaryColor,
              borderWidth: 1,
              childVal: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.downloads,
                    style:
                        AppTextStyles.s17AppPrimary().copyWith(fontSize: 17.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
