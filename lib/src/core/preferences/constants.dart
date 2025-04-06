import 'package:currency_formatter/currency_formatter.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
const String name = "NAME";
const String remember = "REMEMBER";
const String email = "EMAIL";
const String phone = "PHONE";
const String password = "PASSWORD";
const String init = "INIT";
const String language = "LANGUAGE";
const String them = "THEM";
const String isLogin = "LOGIN";
const String token = "TOKEN";
const String userData = "USERDATA";
const String userOrder = "ORDER";
const String showTutorial = "TUTORIAL";
const String userMode = "USERMODE";
const String userImage="USERIMAGE";
double width(BuildContext context) => MediaQuery.of(context).size.width;
double height(BuildContext context) => MediaQuery.of(context).size.height;

showToast(String text, ToastState state) async {
  await Fluttertoast.cancel();
  final backgroundColor = state == ToastState.success
      ? Colors.green
      : state == ToastState.error
          ? Colors.red
          : AppColors.current.primaryTextColor;
  final textColor = state == ToastState.success
      ? Colors.white
      : state == ToastState.error
          ? Colors.white
          : Colors.white;
  Fluttertoast.showToast(
    msg: text,
    timeInSecForIosWeb: 2,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    fontSize: 16,
    backgroundColor: backgroundColor,
    textColor: textColor,
  );
}

enum ToastState {
  success,
  warning,
  error,
}

toastAppSuccess(String msg, BuildContext context) {
  return ElegantNotification(
    iconSize: 26,
    width: MediaQuery.of(context).size.width,
    height: 60,
    displayCloseButton: false,
    description: Text(
      msg,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
    ),
    icon: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.check_circle,
        color: Colors.green,
      ),
    ),
    progressIndicatorColor: Colors.lightGreen,
  ).show(context);
}

toastAppError(String msg, BuildContext context) {
  return ElegantNotification(
    iconSize: 26,
    width: MediaQuery.of(context).size.width,
    // height: 50,
    displayCloseButton: false,
    description: Text(
      msg,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
    ),
    icon: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.check_circle,
        color: Colors.red,
      ),
    ),
    progressIndicatorColor: Colors.red,
  ).show(context);
}

toastAppWarning(String msg, BuildContext context) {
  return ElegantNotification(
    iconSize: 26,
    width: MediaQuery.of(context).size.width * .9,
    // height: 50,
    displayCloseButton: false,
    description: Text(
      msg,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
    ),
    icon: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.warning_rounded,
        color: Colors.amber,
      ),
    ),
    progressIndicatorColor: Colors.amber,
  ).show(context);
}

CurrencyFormat currencySetting = const CurrencyFormat(
  code: 'IQR',
  symbol: '',
  symbolSide: SymbolSide.left,
  // thousandSeparator: '.',
  decimalSeparator: ',',
  symbolSeparator: ' ',
);

