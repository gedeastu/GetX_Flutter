import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:unique_id/controllers/controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.grey.shade200,
        toolbarHeight: 80,
        title: Text("UNIQUE LIST",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
        actions: [
          IconButton(onPressed: (){
            controller.changeTheme();
          }, icon: Icon(Icons.dark_mode))
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 500,
                child: Obx(() => ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          border: Border.all()
                        ),
                        child: Column(
                          children: [
                            Image.asset(controller.products[index].image,fit: BoxFit.cover,height: 200,),
                            Text(controller.products[index].name),
                            Row(
                              children: [
                                IconButton(
                                onPressed: () {
                                  controller.increment(index);
                                }, icon: Icon(Icons.add)),
                                Text("${controller.products[index].numberItems}")
                              ],
                            )
                          ],
                        )
                      );
                    },
                  ))
              )
            ],
          ),
        )
      ),
    );
  }
}