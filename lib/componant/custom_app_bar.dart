import 'package:bird_eyes/componant/avatar_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/constant.dart';

class CustomAppBar extends StatelessWidget {
  VoidCallback onPressed ;
  void Function() openDrawer  ;
  Widget image ;
    CustomAppBar({
   required this.onPressed,
   required this.openDrawer,

   required this.image,
    Key? key, required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading:
         LargeAvatarWithButton(image: image, onPressed:  onPressed),
        title: Text('Mustafa'),backgroundColor: K.cardColor,
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.file_upload),
            onPressed: () => {
              print("Click on upload button")
            },
          ),
          IconButton(
            icon: new Image.asset('assets/images/icon.png'),
            tooltip: 'Closes application',
            onPressed: () {

            },
          ),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: openDrawer,
           ),

        ]
    );
  }
}
