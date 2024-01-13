import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/routes/route_name.dart';
// import 'package:navigation/pages/profile.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text("Contact"),
           ElevatedButton(onPressed: (){
             Get.back();
            }, child: Text(
              "<< Back"
            )),
            ElevatedButton(onPressed: (){
              // Get.to(Profile());
              Get.toNamed(RouteName.profile_page);
            }, child: Text(
              "Next >>"
            ))
          ],
        ),
      ),
    );
  }
}