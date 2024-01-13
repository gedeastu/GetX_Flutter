import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("404 error, page is not found"),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text(
              "<< Back"
            )),
          ],
        ),
      ),
    );
  }
}