import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:state_manager/controllers/controller.dart';
//import 'package:state_manager/models/model.dart';
import 'package:state_manager/pages/Home.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  final controller = Get.put(Controller());
  Main({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
      theme: controller.model.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: Home(),
    ));
  }
}