import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:state_manager/controllers/controller.dart';
class Home extends StatelessWidget {
  
  Home({super.key});
  final controllerHome = Get.find<Controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          onTap: () {
            controllerHome.changeTheme();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Change Theme"),
              SizedBox(width: 5,),
              Icon(controllerHome.model.isDark.value ? Icons.dark_mode : Icons.light_mode)
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Obx(() => Column(
                children: [
                  Text(
                    controllerHome.model.name.value,style: TextStyle(fontSize: 35),
                  ),
                  Text("Umur setiap Tekan : ${controllerHome.model.number.value}")
                ]
              ),
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //controllerHome.toUppercase();
          controllerHome.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}