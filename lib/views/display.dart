import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/logic/providers/all_todos_provider.dart';
import 'package:river/views/homeCard.dart';

class Display extends ConsumerWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _todosProvider = ref.watch(todosProvider);
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 70, right: 10, left: 10),
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              _todosProvider.when(
                data: (data) => ListView.builder(itemBuilder: (context, index) {
                  return Container();
                }),
                error: (err, stack) => Text('Error: $err'),
                loading: () => const CircularProgressIndicator(),
              )
            ],
          )),
    );
  }
}
