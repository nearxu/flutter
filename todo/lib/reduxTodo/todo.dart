
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import './reducer.dart';
import './models.dart';
import './actions.dart';

class TodoApp extends StatelessWidget{
  final Store store = new Store<TodoState>(todoAppReducer,initialState:new TodoState.initState());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreProvider(
        store: store,
        child: new MaterialApp(
          title:'todo',
          home: new App(),
        )
    );
  }
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title:new Text('flutter todos')),
        body:new Text('hello body')
    );
  }
}

//class AddTodo extends StatefulWidget{
//  @override
//  _AddTodoState createState() => new _AddTodoState();
//}
//class _AddTodoState extends State<AddTodo>{
//  final TextEditingController _controller = new TextEditingController();
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new StoreConnector<TodoState>(
//        builder: (BuildContext ,context) => new TextField(
//          controller: _controller,
//          decoration: new InputDecoration(labelText: 'Add todo'),
//          onSubmitted: (todoText){
//            _controller.text = '';
//            store.dispatch(new AddAction(text:todoText))
//          },
//
//        ),
//        converter: (store) =>
//    );
//  }
//}