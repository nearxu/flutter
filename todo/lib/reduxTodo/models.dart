import 'package:flutter/foundation.dart';

enum visitFilter {ALL,ACTIVE,COMPLETED}

class Todo{
  final int id;
  final String text;
  final bool completed;

  const Todo({this.id,this.text,this.completed});
  Todo copyWith({int id ,String text,bool completed}){
    print('copy');
    print(id);
    return new Todo(
      id:id ?? this.id,
      text:text ?? this.text,
      completed: completed ?? this.completed
    );
  }
}

class TodoState{
  final List<Todo> todos;
  final visitFilter visFilter;

  const TodoState({this.todos,this.visFilter});

  TodoState.initialState():todos = <Todo>[],visFilter = visitFilter.ALL;
}

typedef void TodoTapFunction(int id);

typedef void AddTodoPressedFunction(String text);
