import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:state_manager/models/model.dart';

class Controller extends GetxController{
  final model = Model();
  void increment(){
    model.number + 1;
  }
}