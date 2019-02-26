import 'package:flutter/material.dart';
import './actions.dart';
import './models.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Row(
        children: <Widget>[
          new FilterLink(text:'All',filter:visitFilter.ALL ),
          new FilterLink(text:'Active',filter:visitFilter.ACTIVE ),
          new FilterLink(text:'Completed',filter:visitFilter.COMPLETED ),
        ],
      ),
    );
  }
}

class _viewModel{
  final bool active;
  final VoidCallback onPressed;
  _viewModel({this.active,this.onPressed});
}

class FilterLink extends StatelessWidget{
  final visitFilter filter;
  final String text;
  FilterLink({this.filter,this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<TodoState,_viewModel>(
      distinct: true,
      converter: (store) => new _viewModel(
          active:filter == store.state.visFilter,
          onPressed:() => store.dispatch(new SetVisAction(filter:filter))
      ),
      builder: (context,_viewModel) => new Link(
        active:_viewModel.active,
        text:text,
        onPressed: _viewModel.onPressed,
      ),
    );
  }
}

class Link extends StatelessWidget{
  final bool active;
  final String text;
  final VoidCallback onPressed;
  Link({this.active,this.text,this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FlatButton(
        padding: const EdgeInsets.all(10.0),
        onPressed: onPressed,
        child:new Text(text),
        color: active ? Theme.of(context).primaryColor : null,
    );
  }
}