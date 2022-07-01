import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/logic/models/todos.dart';
import 'package:river/logic/store/store.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController descController = TextEditingController();
    final TextEditingController titleController = TextEditingController();
    final TextEditingController idController = TextEditingController();
    Store _store = Store();
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: const Center(
              child: Text(
                "A todo Application",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              controller: descController,
              maxLines: 4,
              decoration: InputDecoration(
                  focusColor: Colors.pink,
                  labelText: "Enter description of the task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: TextFormField(
              controller: titleController,
              maxLines: 1,
              decoration: InputDecoration(
                  labelText: "Enter todo title",
                  focusColor: Colors.pink,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: TextFormField(
              controller: idController,
              maxLines: 1,
              decoration: InputDecoration(
                  labelText: "Enter todo id",
                  focusColor: Colors.pink,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4))),
            ),
          ),
          GestureDetector(
            onTap: () {
              _store.postNewTodo(TodoModel(
                  description: descController.text,
                  id: idController.text,
                  title: titleController.text));
            },
            child: Container(
              width: 100,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue.shade600),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
