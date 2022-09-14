import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class FirstLineWidget extends StatelessWidget {
  const FirstLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: K.boxDecoration,
      padding: K.fixedPadding,
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment
            .spaceBetween,
        children: [
          Text(
            'Name',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight:
                FontWeight.bold,
                color: K.cardColor),
          ),
          Text(
            'Address',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight:
                FontWeight.bold,
                color: K.cardColor),
          ),
          Text(
            'Email',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight:
                FontWeight.bold,
                color: K.cardColor),
          ),
          Text(
            'Phone',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight:
                FontWeight.bold,
                color: K.cardColor),
          ),
        ],
      ),
    );
  }
}
