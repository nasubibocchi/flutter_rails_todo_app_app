import 'package:dio/dio.dart';
import 'package:flutter_rails_todo_app/data/app_dio.dart';
import 'package:flutter_rails_todo_app/data/model/todo.dart';
import 'package:flutter_rails_todo_app/data/model/todo_list.dart';
import 'package:flutter_rails_todo_app/data/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoDataSourceProvider = Provider<TodoDataSource>(
    (ref) => TodoDataSource(dio: ref.read(dioProvider)));

class TodoDataSource {
  TodoDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<Result<TodoList>> fetchTodoList() async {
    try {
      final todoListResult = await _dio.get<Map<String, dynamic>>('/todos/all');
      final todoList = TodoList.fromJson(todoListResult.data!);
      return Success(todoList);
    } on Exception catch (e) {
      return Error(Exception(e));
    }
  }

  Future<Result<Todo>> postTodo({required String body}) async {
    try {
      return await _dio.post<Map<String, dynamic>>('/todos', data: {
        'body': body,
        'is_done': false,
      }).then((response) => Success(Todo.fromJson(response.data!)));
    } catch (e) {
      return Error(Exception(e));
    }
  }

  Future<void> changeTodoStatus(
      {required int todoId, required bool isDone}) async {
    try {
      await _dio
          .put<Map<String, dynamic>>('/todos/$todoId', data: <String, dynamic>{
        'is_done': isDone,
      });
    } catch (e) {
      return;
    }
  }
}
