import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/contact.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("About"),
            ElevatedButton(onPressed: (){
              Get.back(result: "THIS DATA FROM ABOUT PAGE");
            }, child: Text(
              "<< Back"
            )),
            ElevatedButton(onPressed: (){
              Get.to(Contact());
            }, child: Text(
              "Next >>"
            ))
          ],
        ),
      ),
    );
  }
}