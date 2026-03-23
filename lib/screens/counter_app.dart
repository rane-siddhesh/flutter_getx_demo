import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/counter_controller.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'GetX observable use to update counter value.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    counterController.numb++;
                  },
                  icon: Icon(Icons.add, color: Colors.white),
                  style: IconButton.styleFrom(backgroundColor: Colors.purple),
                ),
                SizedBox(width: 20),
                Obx(
                  () => Text(
                    '${counterController.numb}',
                    style: TextStyle(color: Colors.black, fontSize: 35),
                  ),
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    counterController.numb--;
                  },
                  icon: Icon(Icons.remove, color: Colors.white),
                  style: IconButton.styleFrom(backgroundColor: Colors.purple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
