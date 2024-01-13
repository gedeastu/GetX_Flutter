import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login"),
            ElevatedButton(onPressed: (){
              Get.off(Home(),arguments: "Gede Astu");
              // navigator!.push(
              //   MaterialPageRoute(
              //     builder: (_) => Favorite()
              //   )
              // );
            }, child: Text(
              "Next >>"
            ))
          ],
        ),
      ),
    );
  }
}