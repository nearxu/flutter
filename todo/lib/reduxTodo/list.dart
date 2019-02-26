import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:collection/collection.dart';
import './models.dart';
import './reducer.dart';
import './actions.dart';

class viewModel{
  List<Todo> todos;
  final TodoTapFunction onTodoTap;
  viewModel({this.todos,this.onTodoTap});
}

class ViewList extends StatelessWidget{
  List<Todo> _getVisTodos(List<Todo> todos,visitFilter filter){
    print('render filter');
    print(filter);
    print(todos);
    print('filtertodos over');
    switch(filter){
      case visitFilter.ACTIVE:
        return todos.where((todo) => !todo.completed).toList();
      case visitFilter.ALL:
        return todos;
      case visitFilter.COMPLETED:
        return todos.where((todo) => todo.completed).toList();
      default:
        return <Todo>[];
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<TodoState,viewModel>(
        converter:(store) => new viewModel(
            todos:_getVisTodos(store.state.todos,store.state.visFilter),
            onTodoTap: (id) => store.dispatch(new ToggleAction(id:id))

        ),
//        builder:(context,viewModel) => Column(
//          children: viewModel.todos.map((todo) => new ListTile(title:new Text(todo.text))).toList(),
//        )
      builder: (context,viewModel) => new TodoList(
          todos:viewModel.todos,
          onTodoTap:viewModel.onTodoTap
      ),
    );
  }
}



class TodoList extends StatelessWidget{
  final List<Todo> todos;
  final TodoTapFunction onTodoTap;
  TodoList({this.todos,this.onTodoTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: _listItems(),
    );
  }
  List<Widget> _listItems(){
    return todos.map((todo) => new TodoTitle(
      key:new Key(todo.id.toString()),
      todo:todo,
      onTap:onTodoTap
    )).toList();
  }
}

class TodoTitle extends StatelessWidget{
  final Todo todo;
  final TodoTapFunction onTap;
  final Key key;


  TodoTitle({this.todo,this.key,this.onTap});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListTile(
      title:new Text(
          todo.text,

      ),
      onTap:() => onTap(todo.id),
    );
  }
}