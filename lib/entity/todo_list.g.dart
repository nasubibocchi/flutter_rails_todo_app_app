// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoList _$$_TodoListFromJson(Map<String, dynamic> json) => _$_TodoList(
      todoList: (json['todo_list'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TodoListToJson(_$_TodoList instance) =>
    <String, dynamic>{
      'todo_list': instance.todoList.map((e) => e.toJson()).toList(),
    };
