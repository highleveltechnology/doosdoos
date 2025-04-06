import 'package:flutter/material.dart';

const lightGray = Color.fromRGBO(245, 245, 245, 1);
const success = Color(0xFF136616);
const black = Color(0xFF000000);
const white = Color(0xFFFFFFFF);
final opacityBlack = Color(0xFF000000).withOpacity(.3);

// Color getColor(Set<MaterialState> states) {
//   const Set<MaterialState> interactiveStates = <MaterialState>{
//     MaterialState.pressed,
//     MaterialState.hovered,
//     MaterialState.focused,
//   };
//   if (states.any(interactiveStates.contains)) {
//     return green;
//   }
//   return lightGray;
// }
