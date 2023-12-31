import 'package:get/get.dart';

class Controller extends GetxController{
  var counter = 0.obs;
  var isDark = false.obs;

  void increment()=> counter + 1;

  void changeTheme()=> isDark.value = !isDark.value;
}