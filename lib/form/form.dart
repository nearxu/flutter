import 'package:flutter/material.dart';

class FormApp extends StatelessWidget {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  String _name;
  String _password;
  void _formSubmitted() {
    var _form = _formKey.currentState;
    if (_form.validate()) {
      _form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'flutter form',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('from123456789')),
            floatingActionButton: new FloatingActionButton(
                onPressed: _formSubmitted, child: new Text('submit')),
            body: new Container(
              child: new Form(
                key: _formKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(labelText: 'you name'),
                      onSaved: (val) {
                        _name = val;
                      },
                    ),
                    new TextFormField(
                      decoration:
                          new InputDecoration(labelText: 'you password'),
                      onSaved: (val) {
                        _password = val;
                      },
                      validator: (val) {
                        return val.length < 4 ? 'password lose' : null;
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
