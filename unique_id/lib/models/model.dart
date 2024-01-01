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
  int numberItems = 0;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.type,
    this.numberItems = 0
  });
}

class NumberOfItem{
  var number = 0.obs;
}