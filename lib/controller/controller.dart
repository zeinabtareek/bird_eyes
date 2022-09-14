import 'dart:io';
import 'dart:ui';

 import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../componant/choose_image_dialoge.dart';
import '../constants/constant.dart';
import '../model/CustomModel.dart';
import '../services/cat_services.dart';

class CustomController extends GetxController{
  final services =CategoryServices();
  CustomerModel customModel=CustomerModel();
  final loading =false.obs;
  final inedxx=1.obs;
  final  query =''.obs;
  var  selectedImagePath=''.obs;
  var  selectedImageSize=''.obs;
  dynamic lista= [];
  @override
  void onInit() {
    getAllCategory();
  }

  getAllCategory()async{
    loading.value=true;
    customModel = await services.getAllCategory();
    for(int i=0;i<customModel.customers!.length;i++) {
      inedxx.value=i;
      lista.add(inedxx.value);
    };
    print(lista);
    loading.value=false;
    update();
  }
  searchResult(String query){
    CustomController controller=CustomController();
    final x= controller.customModel.customers!.where((element) {
      final title=element.shippingAddress!.firstName!.toLowerCase();
      final theSearchWord=query.toLowerCase();
      return title.contains(theSearchWord);
    }).toList();
this.query.value=query;
this.customModel.customers= x;

    update();

  }


  onBasicWaitingAlertPressed(context, {required Widget widgetContent}) async {
    await Alert(
        context: context,
        style: const AlertStyle(
          animationType: AnimationType.fromTop,
          isCloseButton: false,
          isButtonVisible: false,
          descStyle: TextStyle(fontWeight: FontWeight.bold),
          animationDuration: Duration(milliseconds: 400),
          constraints: BoxConstraints.expand(width: 300),
          overlayColor: Color(0x55000000),
          alertElevation: 0,
        ),
        content:widgetContent).show();
  }


  getImage(ImageSource imageSource)async{

    try {
      // final isGallery = await Get.dialog(const ChooseImageDialog());
    final pickedFile =await ImagePicker().getImage(source: imageSource);
    if(pickedFile !=null){
      selectedImagePath.value=pickedFile.path;
      selectedImageSize.value=((File(selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)+'MP';

    }else {
      Get.snackbar(
          'Error', 'No image selected', snackPosition: SnackPosition.BOTTOM,
          backgroundColor: K.mainColor, colorText: K.whiteColor);
    }}catch (e) {
      print(e);
    }
  }
}