import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String id;
  String title;
  String description;
  TodoModel({required this.description, required this.id, required this.title});

  factory TodoModel.fromJson(DocumentSnapshot json) {
    return TodoModel(
        id: json['id'], title: json['title'], description: json['description']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
      };
}
