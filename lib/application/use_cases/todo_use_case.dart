import 'package:flutter_rails_todo_app/application/repository/todo_repository.dart';
import 'package:flutter_rails_todo_app/entity/todo_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoUseCaseProvider = Provider(
    (ref) => TodoUseCase(repository: ref.read(todoRepositoryProvider)));

class TodoUseCase {
  TodoUseCase({required TodoRepository repository}) : _repository = repository;

  final TodoRepository _repository;

  Future<TodoList?> fetchTodoList() => _repository.fetchTodoList();

  Future<void> postTodo({required String body}) =>
      _repository.postTodo(body: body);

  Future<void> changeTodoStatus({required int todoId, required bool isDone}) =>
      _repository.changeTodoStatus(todoId: todoId, isDone: isDone);
}
