import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/choose_image_dialoge.dart';
import '../../componant/circle_icon.dart';
import '../../componant/custom_app_bar.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/drawer.dart';
import '../../componant/first_line_widget.dart';
import '../../constants/constant.dart';
import '../../controller/controller.dart';

class FirstScreen extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(100);
  final controller=Get.put(CustomController());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: MyDrawer(),
        appBar:    PreferredSize(
            preferredSize: Size.fromHeight(50), child:
        Obx(()=>CustomAppBar(
          openDrawer: () async =>  _scaffoldKey.currentState!.openDrawer(),
          onPressed: () async{

            await controller.onBasicWaitingAlertPressed(
                context,  widgetContent: ChooseImageDialog()) ;

             },
          image: controller.selectedImagePath.value ==''?Text (' click'):
    Image.file(File(controller.selectedImagePath.value)),
        ),)),
        body: SingleChildScrollView(
            child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                  K.sizedBoxH,
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      K.sizedBoxW,
                      K.sizedBoxW,
                      DynamicIconCircled(
                        icon: Icons.search,
                        onPressed: () {  },
                      ),
                      K.sizedBoxW,
                      DynamicIconCircled(
                        icon: Icons.add,
                        onPressed: () async {
                        await controller.onBasicWaitingAlertPressed(
                          context,
                          widgetContent: Container(
                            height: 300,
                            child: Center(
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SizedBox(width:K.width,
                                      child: const Center(child: Text('Add Customer',style: TextStyle(color: K.cardColor),))),
                                   SizedBox(height: 20,child: Text('\n  '),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomTextField(hintText: 'User Name'),
                                      Row(
                                        children: [
                                           Text('Name',style: TextStyle(color: K.cardColor,fontSize: 12.sp),),
                                          K.sizedBoxW,
                                          DynamicIconCircled(
                                            icon: Icons.person,
                                            onPressed: () {  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,child: Text('\n  '),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomTextField(hintText: 'Email'),
                                      Row(
                                        children: [
                                          Text('Email',style: TextStyle(color: K.cardColor,fontSize: 12.sp),),
                                          K.sizedBoxW,
                                          DynamicIconCircled(
                                            icon: Icons.email_rounded,
                                            onPressed: () {  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,child: Text('\n  '),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomTextField(hintText: 'Phone number'),
                                      Row(
                                        children: [
                                          Text('Number',style: TextStyle(color: K.cardColor,fontSize: 12.sp),),
                                          K.sizedBoxW,
                                          DynamicIconCircled(
                                            icon: Icons.mobile_friendly_sharp,
                                            onPressed: () {  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Get.back();
                                  }, child: Text('Save'),style: ButtonStyle(
                                      padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(30,10,30,10)),
                                      backgroundColor: MaterialStateProperty.all<Color>(K.cardColor)),)
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      ),
                    ]),

                       Text(
                      'Customers   ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ]),
                  K.sizedBoxH,
                  Container(
                      height: K.height,
                      width: double.infinity,
                      padding: K.fixedPadding,
                      margin: K.fixedMargin,
                      decoration: K.boxDecoration,
                      child: GetBuilder<CustomController>(
                          init: CustomController(),
                          initState: (_) => CustomController().getAllCategory(),
                          builder: (controller) {
                            return controller.loading.value
                                ? Center(child: CircularProgressIndicator())
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: controller.lista.length,
                                    itemBuilder: (BuildContext, index) {
                                      return Column(
                                        children: [
                                          K.sizedBoxH,
                                          controller.lista[index] == 0
                                              ? FirstLineWidget()
                                              : Container(
                                                  child: Dismissible(
                                                    confirmDismiss: (direction) =>
                                                        confirmDismiss(
                                                            '${controller.customModel.customers?[index].shippingAddress?.id.toString()}'),
                                                    onDismissed: (direction) {
                                                      print(direction);
                                                    },
                                                    key: Key(
                                                        '${controller.customModel.customers![index].shippingAddress?.id}'),
                                                    child: InkWell(
                                                        onTap: () {
                                                          print(
                                                              "${controller.customModel.customers![index].shippingAddress?.firstName} clicked");
                                                        },
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(
                                                              width: K.width / 8,
                                                              child: Text(
                                                                '${controller.customModel.customers![index].shippingAddress?.firstName}'
                                                                    .toUpperCase(),
                                                                style: TextStyle(
                                                                    fontSize: 8.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: K
                                                                        .searchColor),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                width: K.width / 3,
                                                                child: Text(
                                                                  '${controller.customModel.customers![index].shippingAddress?.email}',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          8.sp),
                                                                )),
                                                            SizedBox(
                                                              width: K.width / 8,
                                                              child: Text(
                                                                '${controller.customModel.customers![index].shippingAddress?.address1}',
                                                                style: TextStyle(
                                                                    fontSize: 8.sp),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: K.width / 6,
                                                              child: Text(
                                                                '${controller.customModel.customers![index].shippingAddress?.phoneNumber}',
                                                                style: TextStyle(
                                                                    fontSize: 8.sp),
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                        ),
                                                  ),
                                                ),
                                          K.sizedBoxH
                                        ],
                                      );
                                    });
                          }),),
                ]),
              ));
  }
}
Future<bool> confirmDismiss(String text) async {
  if (text != null) {
    return true;
  } else {
    // Operation failed and Dismissible is reset
    return false;
  }
}
