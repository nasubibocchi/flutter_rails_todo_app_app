// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_todo_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddTodoStateTearOff {
  const _$AddTodoStateTearOff();

  _AddTodoState call(
      {required String? body,
      required TextEditingController todoTextController}) {
    return _AddTodoState(
      body: body,
      todoTextController: todoTextController,
    );
  }
}

/// @nodoc
const $AddTodoState = _$AddTodoStateTearOff();

/// @nodoc
mixin _$AddTodoState {
  String? get body => throw _privateConstructorUsedError;
  TextEditingController get todoTextController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTodoStateCopyWith<AddTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoStateCopyWith<$Res> {
  factory $AddTodoStateCopyWith(
          AddTodoState value, $Res Function(AddTodoState) then) =
      _$AddTodoStateCopyWithImpl<$Res>;
  $Res call({String? body, TextEditingController todoTextController});
}

/// @nodoc
class _$AddTodoStateCopyWithImpl<$Res> implements $AddTodoStateCopyWith<$Res> {
  _$AddTodoStateCopyWithImpl(this._value, this._then);

  final AddTodoState _value;
  // ignore: unused_field
  final $Res Function(AddTodoState) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? todoTextController = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      todoTextController: todoTextController == freezed
          ? _value.todoTextController
          : todoTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$AddTodoStateCopyWith<$Res>
    implements $AddTodoStateCopyWith<$Res> {
  factory _$AddTodoStateCopyWith(
          _AddTodoState value, $Res Function(_AddTodoState) then) =
      __$AddTodoStateCopyWithImpl<$Res>;
  @override
  $Res call({String? body, TextEditingController todoTextController});
}

/// @nodoc
class __$AddTodoStateCopyWithImpl<$Res> extends _$AddTodoStateCopyWithImpl<$Res>
    implements _$AddTodoStateCopyWith<$Res> {
  __$AddTodoStateCopyWithImpl(
      _AddTodoState _value, $Res Function(_AddTodoState) _then)
      : super(_value, (v) => _then(v as _AddTodoState));

  @override
  _AddTodoState get _value => super._value as _AddTodoState;

  @override
  $Res call({
    Object? body = freezed,
    Object? todoTextController = freezed,
  }) {
    return _then(_AddTodoState(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      todoTextController: todoTextController == freezed
          ? _value.todoTextController
          : todoTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_AddTodoState implements _AddTodoState {
  _$_AddTodoState({required this.body, required this.todoTextController});

  @override
  final String? body;
  @override
  final TextEditingController todoTextController;

  @override
  String toString() {
    return 'AddTodoState(body: $body, todoTextController: $todoTextController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTodoState &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.todoTextController, todoTextController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(todoTextController));

  @JsonKey(ignore: true)
  @override
  _$AddTodoStateCopyWith<_AddTodoState> get copyWith =>
      __$AddTodoStateCopyWithImpl<_AddTodoState>(this, _$identity);
}

abstract class _AddTodoState implements AddTodoState {
  factory _AddTodoState(
      {required String? body,
      required TextEditingController todoTextController}) = _$_AddTodoState;

  @override
  String? get body;
  @override
  TextEditingController get todoTextController;
  @override
  @JsonKey(ignore: true)
  _$AddTodoStateCopyWith<_AddTodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
