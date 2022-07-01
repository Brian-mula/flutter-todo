import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:river/logic/models/todos.dart';

class Store {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference todosCollection =
      FirebaseFirestore.instance.collection('todos');

  // !post a new car
  Future<void> postNewTodo(TodoModel todoModel) async {
    await todosCollection.doc(todoModel.id).set(todoModel.toJson());
  }

  // !update a todo

  Future<void> updateTodo(TodoModel todoModel) async {
    await todosCollection.doc(todoModel.id).update(todoModel.toJson());
  }

  // !delete a todo
  Future<void> deleteTodo(String id) async {
    await todosCollection.doc(id).delete();
  }

  // !get all todos
  Stream<List<TodoModel>> get getAllTodos {
    return todosCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return TodoModel.fromJson(doc);
      }).toList();
    });
  }
}
