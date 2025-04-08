import 'package:doos/resource/styles/app_themes.dart';
import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.editTextColor,
    required this.onBoardingText,
    required this.primaryColor,
    required this.secondaryColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.primaryGradient,
    required this.errorTextColor,
    required this.dialogBackColor,
    required this.witheColor,
    required this.dialogColor,
    required this.doteRoundColor,
    required this.nameColor,
    required this.goldColor,
    required this.greenGrayColor,
    required this.greenColor,
    required this.tabUnselectedTextColor,
    required this.grayContainerColor,
    required this.toggleUnavailableColor,
    required this.alignTextColOr,
    required this.newOrderColor,
    required this.underWorkingColor,
    required this.recipientOrdersColors,
    required this.dialogTextColor,
    required this.ayeColor,
    required this.signUpButtonColor,
    required this.orLineColor,
  });

  static late AppColors current;

  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color errorTextColor;
  final Color dialogBackColor;
  final Color witheColor;

  final Color dialogColor;
  final Color editTextColor;
  final Color onBoardingText;
  final Color transparent = Colors.transparent;
  // On Boarding Color
  final Color doteRoundColor;
  final Color nameColor;
  //Gold Color
  final Color goldColor;
  final Color greenGrayColor;
  final Color greenColor;
  final Color tabUnselectedTextColor;
  final Color grayContainerColor;
  final Color toggleUnavailableColor;
  final Color alignTextColOr;
  final Color newOrderColor;
  final Color underWorkingColor;
  final Color recipientOrdersColors;
  final Color dialogTextColor;
  final Color ayeColor;
  final Color signUpButtonColor;
  final Color orLineColor;

  /// gradient
  final LinearGradient primaryGradient;

  static const firstAppColor = AppColors(
    orLineColor: Color(0xff878787),
    signUpButtonColor: Color(0xffF2F2F2),
    ayeColor: Color(0xff00875A),
    dialogTextColor: Color(0xffB9B9B9),
    underWorkingColor: Color(0xff3ACCDE),
    recipientOrdersColors: Color(0xffC218DF),
    newOrderColor: Color(0xff456DFF),
    alignTextColOr: Color(0xff0D0D12),
    toggleUnavailableColor: Color(0xff787880),
    grayContainerColor: Color(0xffEFEFEF), //background: #EFEFEF;
    tabUnselectedTextColor: Color(0xff091F6B),
    greenColor: Color(0xff34C759),
    greenGrayColor: Color.fromRGBO(234, 255, 240, .95),
    goldColor: Color(0xffFFBE4C),
    nameColor: Color(0xff818898),
    doteRoundColor: Color(0xFFBDE0FF),
    primaryColor: Color(0xFF1649FF),
    secondaryColor: Color(0xFF2A9CFF),
    primaryTextColor: Color(0xFF000000),
    secondaryTextColor: Color(0xFF818898),
    editTextColor: Color(0xFFE5E7EB),
    primaryGradient: LinearGradient(
      colors: [Color(0xFF47B2DD), Color(0xFF0E67A7)],
    ),
    errorTextColor: Color(0xFFDC2626),
    dialogBackColor: Color(0xFFEDEDED),
    witheColor: Colors.white,
    dialogColor: Color(0xFFFFFFFF),
    onBoardingText: Color(0xFFFFFFFF),
  );

  static const secondAppColor = AppColors(
    orLineColor: Color(0xff878787),
    signUpButtonColor: Color(0xffF2F2F2),
    ayeColor: Color(0xff00875A),
    dialogTextColor: Color(0xffB9B9B9),
    recipientOrdersColors: Color(0xffC218DF),
    underWorkingColor: Color(0xff3ACCDE),
    newOrderColor: Color(0xff456DFF),
    alignTextColOr: Color(0xff0D0D12),
    toggleUnavailableColor: Color(0xff787880),
    grayContainerColor: Color(0xffEFEFEF),
    tabUnselectedTextColor: Color(0xff091F6B),
    greenColor: Color(0xff34C759),
    greenGrayColor: Color.fromRGBO(234, 255, 240, .95),
    goldColor: Color(0xffFFBE4C),
    nameColor: Color(0xff818898),
    doteRoundColor: Color(0xFFBDE0FF),
    primaryColor: Color(0xFF1649FF),
    secondaryColor: Color(0xFF2A9CFF),
    primaryTextColor: Color(0xFF000000),
    secondaryTextColor: Color(0xFF818898),
    editTextColor: Color(0xFF979797),
    primaryGradient: LinearGradient(
      colors: [Color(0xFFFFFCF7), Color(0xFFFAEFDF)],
      stops: [.5, .5],
    ),
    errorTextColor: Color(0xFFFF0000),
    dialogBackColor: Color(0xFFFFFFFF),
    witheColor: Color(0xFFFFFFFF),
    onBoardingText: Color(0xFF292D32),
    dialogColor: Color(0xFFFFFFFF),
  );

  static const darkThemeColor = AppColors(
    orLineColor: Color(0xff878787),
    signUpButtonColor: Color(0xffF2F2F2),
    ayeColor: Color(0xff00875A),
    dialogTextColor: Color(0xffB9B9B9),
    recipientOrdersColors: Color(0xffC218DF),
    underWorkingColor: Color(0xff3ACCDE),
    newOrderColor: Color(0xff456DFF),
    alignTextColOr: Color(0xff0D0D12),
    toggleUnavailableColor: Color(0xff787880),
    grayContainerColor: Color(0xffEFEFEF),
    tabUnselectedTextColor: Color(0xff091F6B),
    greenColor: Color(0xff34C759),
    greenGrayColor: Color.fromRGBO(234, 255, 240, .95),
    goldColor: Color(0xffFFBE4C),
    nameColor: Color(0xff818898),
    doteRoundColor: Color(0xFFBDE0FF),
    primaryColor: Color(0xFF000000),
    secondaryColor: Color(0xFFBC794E),
    primaryTextColor: Color(0xFF000000),
    secondaryTextColor: Color(0xFFB6B6B6),
    editTextColor: Color.fromRGBO(236, 236, 236, 1),
    primaryGradient: LinearGradient(
      colors: [Color(0xFF1C1C1C), Color(0xFF000000)],
    ),
    errorTextColor: Color(0xFFAF0303),
    dialogBackColor: Color(0xff10101040),
    witheColor: Color(0xFFFFFFFF),
    onBoardingText: Color(0xFFFFFFFF),
    dialogColor: Color.fromRGBO(26, 24, 23, 0.16),
  );

  static AppColors of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    current = appColor;

    return current;
  }

  AppColors copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? editTextColor,
    LinearGradient? primaryGradient,
    Color? errorTextColor,
    Color? dialogBackColor,
    Color? witheColor,
    Color? dialogColor,
    Color? onBoardingText,
  }) {
    return AppColors(
      orLineColor: orLineColor, 
      signUpButtonColor: signUpButtonColor,
      ayeColor: ayeColor,
      dialogTextColor: Color(0xffB9B9B9),
      recipientOrdersColors: recipientOrdersColors,
      underWorkingColor: underWorkingColor,
      newOrderColor: newOrderColor,
      alignTextColOr: alignTextColOr,
      toggleUnavailableColor: toggleUnavailableColor,
      grayContainerColor: grayContainerColor,
      tabUnselectedTextColor: tabUnselectedTextColor,
      greenColor: greenColor,
      greenGrayColor: greenGrayColor,
      goldColor: goldColor,
      doteRoundColor: doteRoundColor,
      nameColor: nameColor,
      primaryColor: primaryColor ?? this.primaryColor,
      editTextColor: editTextColor ?? this.editTextColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      errorTextColor: errorTextColor ?? this.errorTextColor,
      dialogBackColor: dialogBackColor ?? this.dialogBackColor,
      witheColor: witheColor ?? this.witheColor,
      dialogColor: dialogColor ?? this.dialogColor,
      onBoardingText: onBoardingText ?? this.onBoardingText,
    );
  }
}
