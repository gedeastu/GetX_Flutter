import 'package:get/state_manager.dart';

class Theme{
  var isDark = false.obs;
}

class Product{
  final String id;
  final String name;
  double price;
  final String image;
  final String type;
  var numberItems = 0.obs;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.type,
    required this.numberItems
  });
}

class NumberOfItem{
  var number = 0.obs;
}