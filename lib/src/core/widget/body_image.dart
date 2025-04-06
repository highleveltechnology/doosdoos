import 'package:flutter/material.dart';

class BodyImage extends StatelessWidget {
  const BodyImage({super.key, required this.body, this.hasBack});

  final Widget body;
  final bool? hasBack;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (hasBack ?? true)
          //Opacity(opacity: 0.2, child: Assets.images.mainBackground.svg()),
          body
      ],
    );
  }
}
