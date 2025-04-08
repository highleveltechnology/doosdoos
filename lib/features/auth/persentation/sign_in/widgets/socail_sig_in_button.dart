import 'package:doos/features/auth/persentation/widgets/container_of_textform.dart';
import 'package:doos/resource/generated/assets.gen.dart';
import 'package:doos/resource/generated/fonts.gen.dart';
import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SocialSigInButton extends StatelessWidget {
  SocialSigInButton({super.key, this.text, this.icon, this.onPressed});
  final String? text;
  final Widget? icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: ContainerOfTextForm(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            SizedBox(width: 8),
            Text(
              text!,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.current.primaryTextColor,
                fontFamily: FontFamily.montserrat,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
