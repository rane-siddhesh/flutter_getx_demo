import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/repo/to_do_repo.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  void showDialog(String action, ToDoRepo todoRepo) {
    final textController = TextEditingController();
    Get.defaultDialog(
      title: action == "new" ? "New Task" : "Update Task",
      content: TextFormField(
        decoration: InputDecoration(hintText: "Task"),
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
            todoRepo.addTask(json.encode({"title": textController.text}));
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
  }

  @override
  Widget build(BuildContext context) {
    ToDoRepo todoRepo = Get.put(ToDoRepo());
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog("new", todoRepo);
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      /*bottomNavigationBar: ElevatedButton.icon(
        onPressed: () {},
        label: Text("Add Task", style: TextStyle(color: Colors.white)),
        icon: Icon(Icons.add_task, color: Colors.white),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
      ),*/
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(alignment: Alignment.centerLeft, child: Text("My ToDo list")),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Obx(() => Column(children: todoRepo.toDoList.map((e) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.title.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: (){
                                showDialog("update", todoRepo);
                              },
                              icon: Icon(Icons.edit, color: Colors.white),
                            ),
                            IconButton(
                              onPressed: () {
                                Get.defaultDialog(
                                  content: Text(
                                    "Are you sure want to delete task?",
                                  ),
                                  actions: [
                                    OutlinedButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text("No"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                        todoRepo.deleteTask(e.id!);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.deepPurple,
                                      ),
                                      child: Text(
                                        "Yes",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                );
                              },
                              icon: Icon(Icons.delete, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )).toList(),));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
