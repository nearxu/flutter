import 'package:flutter/foundation.dart';

enum visitFilter {ALL,ACTIVE,COMPLETED}

class Todo{
  final int id;
  final String text;
  final bool completed;

  const Todo({this.id,this.text,this.completed});
}

class TodoState{
  final List<Todo> todos;

  const TodoState({this.todos});

  TodoState.initState():todos = <Todo>[];
}

typedef void TodoTapFunction(int id);
