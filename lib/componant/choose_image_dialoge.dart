 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controller/controller.dart';

class ChooseImageDialog extends StatelessWidget {
  const ChooseImageDialog({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(CustomController());
    return

      Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GetBuilder<CustomController>(
                builder: (_c) =>     GestureDetector(
                onTap: () async{
                  await controller.getImage(ImageSource.gallery);

                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:   const [
                    Icon(
                      Icons.add_box_sharp,
                      size: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gallery',

                    ),
                  ],
                ),
              ),
              ),
              Container(
                color: Colors.grey,
                width: 2,
              ),
              GetBuilder<CustomController>(
                builder: (_c) =>  GestureDetector(
                onTap: () async{
                  Get.back();
                  await controller.getImage(ImageSource.camera);
                   controller.dispose();
                 },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_a_photo,
                      size: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Camera',

                    ),
                  ],
                ),
              ),
              ),
            ],



     );
  }
}