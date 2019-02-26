
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import './reducer.dart';
import './models.dart';
import './actions.dart';
import './list.dart';
import './footer.dart';

class TodoApp extends StatelessWidget{
  final Store store = new Store<TodoState>(todoAppReducer,initialState:new TodoState.initialState());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreProvider<TodoState >(
        store: store,
        child: new MaterialApp(
          title:'todo',
          home: App(),
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
        body: new Container(
          child: new Column(
            children: <Widget>[
              new AddTodo(),
              new ViewList(),
              new Footer()
            ],
          ),
        )
    );
  }
}

class AddTodo extends StatefulWidget{
  @override
  _AddTodoState createState() => new _AddTodoState();
}

class _ViewModel{
  final AddTodoPressedFunction onAddPress;
  _ViewModel({this.onAddPress});
}

class _AddTodoState extends State<AddTodo>{
  final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreConnector<TodoState,_ViewModel>(
        builder: (context,viewModel) => new TextField(
          controller: _controller,
          decoration: new InputDecoration(labelText: 'Add todo'),

          onSubmitted: (todoText){
            viewModel.onAddPress(todoText);
            _controller.text = '';
          },

        ),
        converter: (store) => new _ViewModel( onAddPress: (todoText) => store.dispatch(new AddAction(text:todoText)))
    );
}
}



