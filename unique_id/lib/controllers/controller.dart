import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:unique_id/models/model.dart';

class Controller extends GetxController{
  final theme = Theme();
  final numberOfItem = NumberOfItem();
  var products = <Product>[
    Product(id: "1", name: "Vans Sneakers Series 2019", image: "assets/vans.jpeg", price: 40.99, type: "Sport",numberItems: RxInt(0)),
    Product(id: "2", name: "Air Jordan 1 - Remastered", image: "assets/airjordan01.webp", price: 90.99, type: "Sport",numberItems: RxInt(0))
  ].obs;

  void changeTheme(){
    theme.isDark.value = !theme.isDark.value;
  }

  void increment(int index){
    products[index].numberItems++;
    update();
  }
}