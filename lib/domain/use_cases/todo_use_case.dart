import 'package:flutter_rails_todo_app/data/model/todo.dart';
import 'package:flutter_rails_todo_app/data/model/todo_list.dart';
import 'package:flutter_rails_todo_app/data/result.dart';
import 'package:flutter_rails_todo_app/domain/repository/todo_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoUseCaseProvider = Provider<TodoUseCase>(
    (ref) => TodoUseCase(repository: ref.read(todoRepositoryProvider)));

class TodoUseCase {
  TodoUseCase({required TodoRepository repository}) : _repository = repository;

  final TodoRepository _repository;

  Future<Result<TodoList>> fetchTodoList() => _repository.fetchTodoList();

  Future<Result<Todo>> postTodo({required String body}) =>
      _repository.postTodo(body: body);

  Future<void> changeTodoStatus({required int todoId, required bool isDone}) =>
      _repository.changeTodoStatus(todoId: todoId, isDone: isDone);
}
