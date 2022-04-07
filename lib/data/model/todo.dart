import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  factory Todo({required int id, required String body, required bool isDone}) =
      _Todo;

  Todo._();

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
