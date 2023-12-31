import 'package:flutter/material.dart';
import 'package:getx/controllers/controller.dart';
import 'package:getx/pages/HomePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  final controller = Get.put(Controller());
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => 
      MaterialApp(
      theme: controller.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: Home(),
    )
    );
  }
}