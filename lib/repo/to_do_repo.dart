import 'package:get/get.dart';
import 'package:getx_demo/models/ToDoListModel.dart';
import 'package:getx_demo/network/network_api.dart';

class ToDoRepo extends GetxController {
  final _api = NetworkApi();
  var toDoList = RxList<ToDoListModel>();

  @override
  void onInit() {
    super.onInit();
    getTodoList();
  }
  
  Future<RxList<ToDoListModel>> getTodoList() async{
    print("Inside getTodoList");
    final response = await _api.getApi("https://69c19e25085e1a9fae417d33.mockapi.io/Todolist");
    for(Map<String,dynamic> item in response) {
        toDoList.add(ToDoListModel.fromJson(item));
    }
    return toDoList;
  }

  Future<void> addTask(String data) async{
    print("Inside addTask");
    final response = await _api.postApi("https://69c19e25085e1a9fae417d33.mockapi.io/Todolist", data);
  }

  Future<void> deleteTask(String id) async{
    print("Inside addTask");
    final response = await _api.deleteApi("https://69c19e25085e1a9fae417d33.mockapi.io/Todolist/$id");
  }

}