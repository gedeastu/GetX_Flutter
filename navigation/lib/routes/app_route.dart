import 'package:get/get.dart';
import 'package:navigation/pages/about.dart';
import 'package:navigation/pages/contact.dart';
import 'package:navigation/pages/favorite.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/pages/profile.dart';
import 'package:navigation/routes/route_name.dart';

class AppRoute{
  static final pages = [
    GetPage(name: RouteName.home_page, page: () => Home(),),
    GetPage(name: RouteName.favorite_page, page: () => Favorite(),),
    GetPage(name: RouteName.about_page, page: () => About(),),
    GetPage(name: RouteName.contact_page, page: () => Contact(),),
    GetPage(name: RouteName.profile_page, page: () => Profile(),),
  ];
}