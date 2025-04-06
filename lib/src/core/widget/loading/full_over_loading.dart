import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FullOverLoading extends StatelessWidget {
  const FullOverLoading({Key? key, this.isDialog = true, this.size = 40})
      : super(key: key);
  final bool isDialog;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.current.primaryColor,
      ),
    );
  }
}
