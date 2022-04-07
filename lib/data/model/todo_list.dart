import 'package:flutter_rails_todo_app/data/model/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list.freezed.dart';

part 'todo_list.g.dart';

@freezed
abstract class TodoList with _$TodoList {
  // メモ：ここの変数名はapi側の名前と合わせる
  factory TodoList({required List<Todo> todos}) = _TodoList;

  TodoList._();

  factory TodoList.fromJson(Map<String, dynamic> json) =>
      _$TodoListFromJson(json);
}
