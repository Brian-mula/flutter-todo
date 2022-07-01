import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/logic/models/todos.dart';

class HomeCard extends ConsumerWidget {
  TodoModel todoModel;
  HomeCard({Key? key, required this.todoModel}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        children: [Text(todoModel.title), Text(todoModel.description)],
      ),
    );
  }
}
