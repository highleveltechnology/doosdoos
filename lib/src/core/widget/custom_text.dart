import 'package:doos/src/core/local/responsive_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textDecoration = TextDecoration.none,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.fontFamily = "Regular",
    this.textScaleFactor,
    this.height = 1.5,
    this.textStyle,
    this.softWrap
  });

  final String text;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDecoration textDecoration;
  final TextAlign textAlign;
  final int? maxLines;
  final double? height;
  final double? textScaleFactor;
  final TextStyle? textStyle;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
  //    textScaleFactor:ScaleSize.textScaleFactor(context),
      softWrap: softWrap,
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textStyle?.copyWith(
            // 👈 Use custom text style first, then override if needed
            height: height,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: textDecoration,
          ) ??
          Theme.of(context).textTheme.bodySmall!.copyWith(
                height: height,
                color: color,
                fontSize: fontSize,
                fontWeight: fontWeight,
                decoration: textDecoration,
              ),
    );
  }
}
