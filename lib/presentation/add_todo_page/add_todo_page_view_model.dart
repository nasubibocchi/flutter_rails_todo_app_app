import 'package:flutter/cupertino.dart';
import 'package:flutter_rails_todo_app/domain/use_cases/todo_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'add_todo_page_view_model.freezed.dart';

final addTodoViewModelProvider =
    StateNotifierProvider<AddTodoPageViewModel, AddTodoState>(
        (ref) => AddTodoPageViewModel(ref.read(todoUseCaseProvider)));

@freezed
class AddTodoState with _$AddTodoState {
  factory AddTodoState(
      {required String? body,
      required TextEditingController todoTextController}) = _AddTodoState;
}

class AddTodoPageViewModel extends StateNotifier<AddTodoState> {
  AddTodoPageViewModel(this._todoUseCase)
      : super(AddTodoState(
            body: null,
            todoTextController: TextEditingController(text: null))) {
    state.todoTextController.selection = TextSelection.fromPosition(
        TextPosition(offset: state.todoTextController.text.length));
  }

  final TodoUseCase _todoUseCase;

  void onEditText(String body) {
    final currentState = state;
    state = currentState.copyWith(body: body);
  }

  Future<bool> postTodo({required String body}) async {
    final postResult = await _todoUseCase.postTodo(body: body);
    return postResult.whenWithResult((success) => true, (e) => false);
  }
}
