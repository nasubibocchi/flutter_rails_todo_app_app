import 'package:dio/dio.dart';
import 'package:flutter_rails_todo_app/data/app_dio.dart';
import 'package:flutter_rails_todo_app/domain/entity/todo_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoDataSourceProvider =
    Provider((ref) => TodoDataSource(dio: ref.read(dioProvider)));

class TodoDataSource {
  TodoDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<TodoList?> fetchTodoList() async {
    try {
      final todoListResult = await _dio.get<Map<String, dynamic>>('/todos/all');

      if (todoListResult.data != null) {
        final todoList = TodoList.fromJson(todoListResult.data!);
        return todoList;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> postTodo({required String body}) async {
    try {
      await _dio.post<Map<String, dynamic>>('/todos', data: <String, dynamic>{
        'body': body,
        'isDone': false,
      });
    } catch (e) {
      return;
    }
  }

  Future<void> changeTodoStatus(
      {required int todoId, required bool isDone}) async {
    try {
      await _dio.post<Map<String, dynamic>>('/todos', data: <String, dynamic>{
        'isDone': isDone,
      });
    } catch (e) {
      return;
    }
  }
}
