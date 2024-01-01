import 'package:flutter/material.dart';
//import 'package:state_manager/models/model.dart';
import 'package:state_manager/pages/Home.dart';

void main() {
  runApp(Main());
}
class Main extends StatelessWidget {
  Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}