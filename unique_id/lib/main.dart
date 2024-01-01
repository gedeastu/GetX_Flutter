import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:unique_id/controllers/controller.dart';
import 'package:unique_id/pages/HomePage.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  Main({super.key});
  final controllerChangeTheme = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: controllerChangeTheme.theme.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: Home(),
    ));
  }
}