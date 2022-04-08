import 'package:flutter/material.dart';
import 'package:flutter_rails_todo_app/presentation/add_todo_page/add_todo_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddTodoPage extends ConsumerWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final body = ref.watch(addTodoViewModelProvider.select((s) => s.body));

    final todoController =
        ref.watch(addTodoViewModelProvider.select((s) => s.todoTextController));

    Future<void> _showDialog({String? message}) async {
      await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(message ?? '', maxLines: 2),
              ),
              actions: [
                Center(
                  child: SizedBox(
                    child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('ok')),
                  ),
                ),
              ],
            );
          });
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextField(
              controller: todoController,
              onChanged: (value) {
                ref.read(addTodoViewModelProvider.notifier).onEditText(value);
              },
              onEditingComplete: () => FocusScope.of(context).unfocus(),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (body != null) {
                final response = await ref
                    .read(addTodoViewModelProvider.notifier)
                    .postTodo(body: body);

                if (response) {
                  await _showDialog(message: 'Succeeded');
                } else {
                  await _showDialog(message: 'Some errors occurred');
                }
              }
            },
            child: const Text('追加する'),
          ),
        ],
      ),
    );
  }
}
