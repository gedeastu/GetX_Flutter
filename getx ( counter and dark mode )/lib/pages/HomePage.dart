import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/controllers/controller.dart';
//import 'package:getx/controllers/controller.dart';
//import  'package:get/get.dart';

class Home extends StatelessWidget {
  //final counterController = Get.put(CounterController());
  Home({super.key});
  final controller = Get.find<Controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("GETX FLUTTER"),
        actions: [
          IconButton(onPressed: (){
            controller.changeTheme();
          }, icon: Icon(controller.isDark.value ? Icons.dark_mode : Icons.light_mode))
        ],
      ),
      body: Center(
        child: Obx(()=>Text("${controller.counter}",style: TextStyle(fontSize: 30),)),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.increment();
        //controller.changeTheme();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}