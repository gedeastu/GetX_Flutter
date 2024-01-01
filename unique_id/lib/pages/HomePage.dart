import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:unique_id/controllers/controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerChangeTheme = Get.find<Controller>();
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
            controllerChangeTheme.changeTheme();
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
                child: GetBuilder<Controller>(
                  builder: (controller)=>ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.amber
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.asset(controller.products[index].image)
                            ),
                            
                          ],
                        ),
                      );
                    },
                  )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}