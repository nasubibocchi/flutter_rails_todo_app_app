import 'package:flutter_rails_todo_app/data/model/todo.dart';
import 'package:flutter_rails_todo_app/domain/use_cases/todo_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    todoResult.whenWithResult((list) {
      state = TodoListState(todoList: list.value.todos);
    }, (p0) {
      state = TodoListState.error();
    });
  }

  Future<void> postTodo({required String body}) async {
    await _todoUseCase.postTodo(body: body);
  }

  Future<void> onTapCheckBox() async {}

  Future<void> onRefresh() async {
    state = TodoListState.loading();
    await _fetchTodos();
  }
}
