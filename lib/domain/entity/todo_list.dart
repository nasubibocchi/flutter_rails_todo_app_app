import 'package:flutter_rails_todo_app/domain/entity/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list.freezed.dart';

part 'todo_list.g.dart';

@freezed
abstract class TodoList with _$TodoList {
  factory TodoList({required List<Todo> todoList}) = _TodoList;

  TodoList._();

  factory TodoList.fromJson(Map<String, dynamic> json) =>
      _$TodoListFromJson(json);
}
