import 'package:flutter/material.dart';
import 'package:flutter_rails_todo_app/presentation/add_todo_page/add_todo_page.dart';
import 'package:flutter_rails_todo_app/presentation/todo_list/todo_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListViewModelProvider);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddTodoPage()));
          },
          child: const Icon(Icons.add),
        ),
        body: state.when(
          (todoList) {
            return todoList.isEmpty
                ? const SizedBox()
                : ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context, int index) {
                      return Card(
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            Checkbox(
                                value: todoList[index].isDone,
                                onChanged: (_) {
                                  ref
                                      .read(todoListViewModelProvider.notifier)
                                      .onTapCheckBox();
                                  ref
                                      .read(todoListViewModelProvider.notifier)
                                      .onRefresh();
                                }),
                            const SizedBox(width: 20),
                            Expanded(child: Text(todoList[index].body)),
                          ],
                        ),
                      );
                    });
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e) => Center(child: Text(e ?? '')),
        ));
  }
}
