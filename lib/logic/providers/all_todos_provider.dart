import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/logic/models/todos.dart';
import 'package:river/logic/store/store.dart';

Store _store = Store();

final todosProvider = StreamProvider<List<TodoModel>>((ref) async* {
  yield* _store.getAllTodos;
});
