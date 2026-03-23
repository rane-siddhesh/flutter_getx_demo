import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackBar() {
  Get.snackbar(
    "GetX Title",
    "GetX Message",
    colorText: Colors.white,
    margin: EdgeInsets.all(20),
    snackPosition: SnackPosition.BOTTOM,
    icon: Icon(Icons.notifications_active_outlined, color: Colors.white,),
    backgroundColor: Colors.black54
  );
}
