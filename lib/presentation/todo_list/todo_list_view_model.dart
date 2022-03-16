import 'package:flutter_rails_todo_app/application/use_cases/todo_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_rails_todo_app/entity/todo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'todo_list_view_model.freezed.dart';

final todoListViewModelProvider =
    StateNotifierProvider<TodoListViewModel, TodoListState>(
        (ref) => TodoListViewModel((ref.read(todoUseCaseProvider))));

@freezed
class TodoListState with _$TodoListState {
  factory TodoListState({required List<Todo> todoList}) = _TodoListState;

  factory TodoListState.loading() = _TodoListStateLoading;

  factory TodoListState.error() = _TodoListStateError;
}

class TodoListViewModel extends StateNotifier<TodoListState> {
  TodoListViewModel(this._todoUseCase) : super(TodoListState.loading()) {
    _fetchTodos();
  }

  final TodoUseCase _todoUseCase;

  Future<void> _fetchTodos() async {
    final todoResult = await _todoUseCase.fetchTodoList();
    if (todoResult != null) {
      state = TodoListState(todoList: todoResult.todoList);
    } else {
      state = TodoListState.error();
    }
  }

  Future<void> postTodo({required Todo todo}) async {}

  Future<void> onTapCheckBox() async {}

  Future<void> onRefresh() async {
    state = TodoListState.loading();
    await _fetchTodos();
  }
}
