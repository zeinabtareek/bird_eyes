import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class SearchWidget extends StatelessWidget {
 final String text ;
 final ValueChanged<String>onChanged ;
 final String hintText ;
  final controller =TextEditingController();
 SearchWidget({required this.text,required this.onChanged,required this.hintText,});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      margin: K.fixedMargin,
      decoration: K.TextFieldboxDecoration,
      padding: K.fixedPadding,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(icon:Icon( Icons.search),
        suffixIcon: text.isNotEmpty?GestureDetector(
          child
          :Icon(Icons.close),onTap: (){controller.clear();
            onChanged('');
            },
        )
        :null,
          hintText: hintText,
      ),onChanged:onChanged,
      ),
    );
  }
}
