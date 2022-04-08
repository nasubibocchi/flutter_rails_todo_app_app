// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoListStateTearOff {
  const _$TodoListStateTearOff();

  _TodoListState call({required List<Todo> todoList}) {
    return _TodoListState(
      todoList: todoList,
    );
  }

  _TodoListStateLoading loading() {
    return _TodoListStateLoading();
  }

  _TodoListStateError error({required String? error}) {
    return _TodoListStateError(
      error: error,
    );
  }
}

/// @nodoc
const $TodoListState = _$TodoListStateTearOff();

/// @nodoc
mixin _$TodoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoListState value) $default, {
    required TResult Function(_TodoListStateLoading value) loading,
    required TResult Function(_TodoListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;
}

/// @nodoc
abstract class _$TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(
          _TodoListState value, $Res Function(_TodoListState) then) =
      __$TodoListStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(
      _TodoListState _value, $Res Function(_TodoListState) _then)
      : super(_value, (v) => _then(v as _TodoListState));

  @override
  _TodoListState get _value => super._value as _TodoListState;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_TodoListState(
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoListState implements _TodoListState {
  _$_TodoListState({required this.todoList});

  @override
  final List<Todo> todoList;

  @override
  String toString() {
    return 'TodoListState(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListState &&
            const DeepCollectionEquality().equals(other.todoList, todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoList));

  @JsonKey(ignore: true)
  @override
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return $default(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) {
    return $default?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoListState value) $default, {
    required TResult Function(_TodoListStateLoading value) loading,
    required TResult Function(_TodoListStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TodoListState implements TodoListState {
  factory _TodoListState({required List<Todo> todoList}) = _$_TodoListState;

  List<Todo> get todoList;
  @JsonKey(ignore: true)
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoListStateLoadingCopyWith<$Res> {
  factory _$TodoListStateLoadingCopyWith(_TodoListStateLoading value,
          $Res Function(_TodoListStateLoading) then) =
      __$TodoListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodoListStateLoadingCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateLoadingCopyWith<$Res> {
  __$TodoListStateLoadingCopyWithImpl(
      _TodoListStateLoading _value, $Res Function(_TodoListStateLoading) _then)
      : super(_value, (v) => _then(v as _TodoListStateLoading));

  @override
  _TodoListStateLoading get _value => super._value as _TodoListStateLoading;
}

/// @nodoc

class _$_TodoListStateLoading implements _TodoListStateLoading {
  _$_TodoListStateLoading();

  @override
  String toString() {
    return 'TodoListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TodoListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoListState value) $default, {
    required TResult Function(_TodoListStateLoading value) loading,
    required TResult Function(_TodoListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TodoListStateLoading implements TodoListState {
  factory _TodoListStateLoading() = _$_TodoListStateLoading;
}

/// @nodoc
abstract class _$TodoListStateErrorCopyWith<$Res> {
  factory _$TodoListStateErrorCopyWith(
          _TodoListStateError value, $Res Function(_TodoListStateError) then) =
      __$TodoListStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$TodoListStateErrorCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateErrorCopyWith<$Res> {
  __$TodoListStateErrorCopyWithImpl(
      _TodoListStateError _value, $Res Function(_TodoListStateError) _then)
      : super(_value, (v) => _then(v as _TodoListStateError));

  @override
  _TodoListStateError get _value => super._value as _TodoListStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_TodoListStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TodoListStateError implements _TodoListStateError {
  _$_TodoListStateError({required this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'TodoListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$TodoListStateErrorCopyWith<_TodoListStateError> get copyWith =>
      __$TodoListStateErrorCopyWithImpl<_TodoListStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoListState value) $default, {
    required TResult Function(_TodoListStateLoading value) loading,
    required TResult Function(_TodoListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoListState value)? $default, {
    TResult Function(_TodoListStateLoading value)? loading,
    TResult Function(_TodoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TodoListStateError implements TodoListState {
  factory _TodoListStateError({required String? error}) = _$_TodoListStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$TodoListStateErrorCopyWith<_TodoListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
