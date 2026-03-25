class ToDoListModel {
  String? title;
  String? description;
  String? id;

  ToDoListModel({this.title, this.description, this.id});

  ToDoListModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['id'] = this.id;
    return data;
  }
}
