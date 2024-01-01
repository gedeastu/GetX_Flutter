import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:state_manager/models/model.dart';

class Controller extends GetxController{
  final model = Model();

  void increment(){
    model.number + 1;
  }

  void toUppercase(){
    model.name.value = model.name.value.toUpperCase();
  }

  void changeTheme(){
    model.isDark.value = !model.isDark.value;
  }
}