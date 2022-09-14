import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
      CustomTextField({
    super.key,
   required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: K.width/2.5,
      height: 30.h,

      child: Material(
        elevation: 5,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.center,

          maxLength: 10,
          minLines: 1,

          validator: (value) {
            if (value!.isEmpty) {
              return 'Name is Required';
            }
            return null;
          },
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            hintStyle: TextStyle(height: .5 ,fontSize: 10),
            contentPadding: EdgeInsets.all(10.0),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
