import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:state_manager/controllers/controller.dart';
import 'package:state_manager/models/model.dart';

class Home extends StatelessWidget {
  
  Home({super.key});
  final model = Model();
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: double.infinity,
        child: Obx(() => Column(
          children: [
            Text(
              "${model.name.value}",style: TextStyle(fontSize: 35),
            ),
            Text("${model.number.value}")
          ]
        ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}