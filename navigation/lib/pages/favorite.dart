import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/about.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Favorite"),
            ElevatedButton(onPressed: (){
               Get.back();
            }, child: Text(
              "<< Back"
            )),
            ElevatedButton(onPressed: () async {
             var dataByAbout = await Get.to(About());
             print(dataByAbout);
            }, child: Text(
              "Next >>"
            ))
          ],
        ),
      ),
    );
  }
}