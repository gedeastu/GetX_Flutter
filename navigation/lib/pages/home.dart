import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/pages/favorite.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Home"),
            ElevatedButton(onPressed: (){
              Get.to(Favorite());
              // navigator!.push(
              //   MaterialPageRoute(
              //     builder: (_) => Favorite()
              //   )
              // );
            }, child: Text(
              "Next >>"
            )),
            Text(Get.arguments.toString())
          ],
        ),
      ),
    );
  }
}