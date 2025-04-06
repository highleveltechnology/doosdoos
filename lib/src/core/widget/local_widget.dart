import 'package:doos/src/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalWidget extends StatelessWidget {
  final Widget widget;
  const LocalWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: context.read<AppBloc>().languageCode == 'ar' ? 0 : 2,
      child: widget,
    );
  }
}
