import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:user_list/app/routes/pages.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.home,
    // theme: appThemeData,
    defaultTransition: Transition.rightToLeft,
    getPages: AppPages.pages,
  ));
}
