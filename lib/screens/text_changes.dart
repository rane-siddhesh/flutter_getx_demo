import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/name_controller.dart';

class TextChanges extends StatelessWidget {
  const TextChanges({super.key});

  /*void showDialog() {
    Get.defaultDialog(
      title: "Update Name",
      content: TextFormField(decoration: InputDecoration(hintText: "name"), validator: (value) {
        if(value!.isEmpty) {
          return "Please enter name";
        }
        return null;
      },
      onSaved: (value) {

      },),
      actions: [
        OutlinedButton(onPressed: () {}, child: Text("Cancel")),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
          child: Text("Submit", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }*/

  @override
  Widget build(BuildContext context) {
    final NameController nameController = Get.put(NameController());
    final textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Text Update")),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Update name by using GetX",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                color: Colors.deepPurpleAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Text(
                          "${nameController.nameTxt}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: "Update Name",
                            content: TextFormField(
                              decoration: InputDecoration(hintText: "name"),
                              controller: textController,
                            ),
                            actions: [
                              OutlinedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text("Cancel"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  nameController.nameTxt.value =
                                      textController.text;
                                  Get.back();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                ),
                                child: Text(
                                  "Submit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          );
                        },
                        icon: Icon(Icons.edit, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
