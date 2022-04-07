import 'package:flutter_rails_todo_app/data/remote/todo_data_source.dart';
import 'package:flutter_rails_todo_app/data/model/todo_list.dart';
import 'package:flutter_rails_todo_app/data/result.dart';
import 'package:flutter_rails_todo_app/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl({required TodoDataSource dataSource})
      : _dataSource = dataSource;

  final TodoDataSource _dataSource;

  @override
  Future<Result<TodoList>> fetchTodoList() async {
    final todoListResult = await _dataSource.fetchTodoList();
    return todoListResult;
  }

  @override
  Future<void> changeTodoStatus(
      {required int todoId, required bool isDone}) async {
    await _dataSource.changeTodoStatus(todoId: todoId, isDone: isDone);
  }

  @override
  Future<void> postTodo({required String body}) async {
    await _dataSource.postTodo(body: body);
  }
}
