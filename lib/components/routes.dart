import 'package:get/get.dart';
import 'package:getx_demo/screens/about_us.dart';
import 'package:getx_demo/screens/contact_us.dart';
import 'package:getx_demo/screens/home.dart';

final myPages = [
  GetPage(name: "/", page: () => Home()),
  GetPage(name: "/about", page: () => AboutUs(), transition: Transition.downToUp),
  GetPage(name: "/contact", page: () => ContactUs(), transition: Transition.upToDown),
];
