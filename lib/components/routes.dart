import 'package:get/get.dart';

import '../screens/screens.dart';

final myPages = [
  GetPage(name: "/", page: () => Home()),
  GetPage(name: "/about", page: () => AboutUs(), transition: Transition.downToUp),
  GetPage(name: "/contact", page: () => ContactUs(), transition: Transition.upToDown),
  GetPage(name: "/language", page: () => LanguageTranslate(), transition: Transition.upToDown),
  GetPage(name: "/counter", page: () => CounterApp(), transition: Transition.circularReveal),
];
