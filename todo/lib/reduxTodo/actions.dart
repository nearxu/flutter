import 'package:flutter/foundation.dart';
import './models.dart';

abstract class TodoAction{
  String toString(){
    return '$runtimeType';
  }
}

class AddAction extends TodoAction{
  static int _id = 0;
  final String text;
  AddAction({this.text}){
    _id++;
  }
  int get id => _id;
}