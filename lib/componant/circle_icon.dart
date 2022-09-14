import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class DynamicIconCircled extends StatelessWidget {
  IconData icon;
  VoidCallback onPressed;
  DynamicIconCircled({
    Key? key,
    required  this.icon,
    required  this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      decoration:  const BoxDecoration(
          color: K.cardColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: K.cardColor,
              offset: Offset(0.0, 1.0),
              blurRadius: 15,
            )
          ]),
      child: Center(
        child: IconButton(iconSize: 15,
          icon:   Icon(
            icon,
            color: K.whiteColor,
          ),
          onPressed:onPressed,
        ),
      ),
    );
  }
}
