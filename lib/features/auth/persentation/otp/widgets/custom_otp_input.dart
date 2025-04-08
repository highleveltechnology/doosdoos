import 'package:doos/resource/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOtpInput extends StatefulWidget {
  final int length;
  const CustomOtpInput({super.key, this.length = 4});

  @override
  State<CustomOtpInput> createState() => _CustomOtpInputState();
}

class _CustomOtpInputState extends State<CustomOtpInput> {
  late List<TextEditingController> _controllers;
  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.length, (index) {
        return Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color:
                  _controllers[index].text.isNotEmpty
                      ? AppColors.current.primaryTextColor
                      : AppColors.current.dialogTextColor,
              width: 2,
            ),
          ),
          child: Center(
            child: TextField(
              controller: _controllers[index],
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value.length == 1 && index < widget.length - 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.isEmpty && index > 0) {
                  FocusScope.of(context).previousFocus();
                }
              },
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: const InputDecoration(
                counterText: "",
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 20),
            ),
          ),
        );
      }),
    );
  }
}
