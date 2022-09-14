import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../services/cat_services.dart';


class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}
CategoryServices ser=CategoryServices();

class _SecondScreenState extends State<SecondScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: InkWell(
        onTap: ()async{
       var res=  await  ser.getAllCategory();
         print(res);
        },
        child: Center(child: Text('click')),
      ),
    );
  }

  @override
  void initState() {
    ser.getAllCategory();

  }
}
