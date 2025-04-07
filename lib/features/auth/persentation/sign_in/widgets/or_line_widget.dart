import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrLineWidget extends StatelessWidget {
  const OrLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(
              left: 5, right:15),
          child: const Divider(
            color: Colors.grey,
            height: 36,
            thickness: 2,
          ),
        )),
        Text(
         "OR",
          style: TextStyle(
            fontSize:18.sp,color: Colors.grey),
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(
              left:5, right: 15),
          child: Divider(
            color: Colors.grey,
            height: 36.h,
            thickness: 2,
          ),
        ))
      ],
    );
  }
}