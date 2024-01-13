import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/404.dart';
import 'package:navigation/pages/login.dart';
import 'package:navigation/routes/app_route.dart';
void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  // Get.back() => For pop()

  // Get.to() => For push()

  // Get.off() => For popReplacement()

  // Get.offAll() => For popReplacement() but more than 1 page

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
      unknownRoute: GetPage(name: '/error', page: () => ErrorPage(),),
      initialRoute: '/',
      getPages: AppRoute.pages,
    );
  }
}