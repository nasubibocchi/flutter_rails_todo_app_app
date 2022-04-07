import 'package:flutter_rails_todo_app/data/remote/todo_data_source.dart';
import 'package:flutter_rails_todo_app/data/repository/todo_repository_impl.dart';
import 'package:flutter_rails_todo_app/domain/entity/todo_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoRepositoryProvider = Provider(
    (ref) => TodoRepositoryImpl(dataSource: ref.read(todoDataSourceProvider)));

abstract class TodoRepository {
  Future<TodoList?> fetchTodoList();

  Future<void> postTodo({required String body});

  Future<void> changeTodoStatus({required int todoId, required bool isDone});
}
