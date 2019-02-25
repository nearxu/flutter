import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';

// model
class CountState{
  int _count;
  get count => _count;
  CountState(this._count);
  CountState.initState(){ _count = 0;}
}
// action
enum Action{
  increment
}

// reducer
CountState reducer(CountState state,action){
  if(action == Action.increment){
    return CountState(state.count+1);
  }
  return state;
}

class AppCount extends StatelessWidget{
  final store = Store<CountState>(reducer,initialState: CountState.initState());
  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TopScreen(),
      ),
    );
  }
}

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Screen'),
      ),
      body: Center(
        child: StoreConnector<CountState,int>(
          converter: (store) => store.state.count,
          builder: (context, count) {
            return Text(
              count.toString(),
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return UnderScreen();
          }));
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}

class UnderScreen extends StatefulWidget {
  @override
  _UnderScreenState createState() => _UnderScreenState();
}

class _UnderScreenState extends State<UnderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Under Screen'),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<CountState, int>(
              converter: (store) => store.state.count,
              builder: (context, count) {
                return Text(
                  count.toString(),
                  style: Theme
                      .of(context)
                      .textTheme
                      .display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: StoreConnector<CountState, VoidCallback>(

        converter: (store) {
          return () => store.dispatch(Action.increment);
        },
        builder: (context, callback) {
          return FloatingActionButton(
            onPressed: callback,
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}


