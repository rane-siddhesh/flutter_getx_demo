import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/components/bottomsheet_dialog.dart';
import 'package:getx_demo/components/dialog.dart';
import 'package:getx_demo/components/my_snackbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter GetX", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: showSnackBar,
              child: Text("Show SnackBar"),
            ),
            SizedBox(height: 15),
            ElevatedButton(onPressed: displayDialog, child: Text("Show Dialog")),
            SizedBox(height: 15),
            ElevatedButton(onPressed: displayBottomSheetDialog, child: Text("Show BottomSheet Dialog")),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Get.to(AboutUs());
                    Get.toNamed("/about");
                  },
                  child: Text("About Us"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/contact");
                  },
                  child: Text("Contact Us"),
                ),
              ],
            ),
            SizedBox(height: 15),
            ElevatedButton(onPressed: () {
              Get.toNamed("/language");
            }, child: Text("Language Translate")),
          ],
        ),
      ),
    );
  }
}
