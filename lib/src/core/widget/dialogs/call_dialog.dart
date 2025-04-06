
import 'package:doos/resource/styles/app_colors.dart';
import 'package:doos/resource/styles/app_text_styles.dart';
import 'package:doos/resource/styles/colors.dart';
import 'package:doos/src/core/widget/dialogs/confirm_dialog.dart';
import 'package:doos/src/core/widget/dialogs/susses_dialog.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'error_dialog.dart';

class CallDialog {
  static void showErrorDialog(BuildContext context, String msg) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 500),
        barrierColor: black.withOpacity(.3),
        transitionBuilder: (context, a1, a2, widget) {
          const begin = Offset(0.0, -1.0);
          const end = Offset.zero;
          return SlideTransition(
              // scale: a1.value,
              position: Tween(begin: begin, end: end).animate(a1),
              child:
                  Opacity(opacity: a1.value, child: ErrorDialog(message: msg)));
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return Container();
        });
  }

  static void showVpnConnentedDialog(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      barrierDismissible: false, 
      builder: (BuildContext dialogContext) {
        return PopScope(
          canPop: false,
          child: AlertDialog.adaptive(
            title: Text(S.of(context).vpn_connected,
                style: AppTextStyles.s17Primary()
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            content: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(S.of(context).vpn_connected_message,
                  style: AppTextStyles.s15Primary()
                      .copyWith(color: Colors.black87),
                  textAlign: TextAlign.center),
            ),
          ),
        );
      },
    );
  }

  static void showSussesDialog(
    BuildContext context, {
    String? titleMassage,
    String? bodyMassage,
    String? btnMessage,
    GestureTapCallback? onClick,
  }) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 500),
        barrierColor: black.withOpacity(.3),
        transitionBuilder: (context, a1, a2, widget) {
          return Opacity(
              opacity: a1.value,
              child: SussesDialog(
                titleMessage: titleMassage,
                bodyMessage: bodyMassage,
                onClick: onClick,
                btnMessage: btnMessage,
              ));
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return Container();
        });
  }

  static void showBottomSussesDialog(
    BuildContext context, {
    String? titleMassage,
    String? bodyMassage,
    String? btnMessage,
    GestureTapCallback? onClick,
  }) {
    showModalBottomSheet(
      backgroundColor: AppColors.current.witheColor,
      context: context,
      builder: (builder) => Wrap(
        children: [
          SussesDialog(
            titleMessage: titleMassage,
            bodyMessage: bodyMassage,
            onClick: onClick,
            btnMessage: btnMessage,
          )
        ],
      ),
    );
  }

  static void showConfirmDialog(
    BuildContext context, {
    String? titleMassage,
    String? bodyMassage,
    String? actionTitle,
    Widget? icon,
    Function? secondClick,
    String? secondTitle,
    GestureTapCallback? onClick,
  }) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 500),
        barrierColor: black.withOpacity(.3),
        transitionBuilder: (context, a1, a2, widget) {
          return ScaleTransition(
              scale: a1,
              child: Opacity(
                  opacity: a1.value,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ConfirmDialog(
                      titleMessage: titleMassage,
                      icon: icon,
                      bodyMessage: bodyMassage,
                      actionTitle: actionTitle,
                      secondClick: secondClick,
                      secondTitle: secondTitle,
                      onClick: onClick,
                    ),
                  )));
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return Container();
        });
  }
}
