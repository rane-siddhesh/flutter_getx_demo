import 'package:flutter/material.dart';
import 'package:get/get.dart';

void displayDialog() {
  Get.defaultDialog(
    title: "App Alert",
    content: Text("This is GetX Dialog. Do you like it?"),
    actions: [
      OutlinedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("Cancel"),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
        child: Text("Like It!", style: TextStyle(color: Colors.white)),
      ),
    ],
  );
}
