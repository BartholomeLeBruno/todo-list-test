import 'package:flutter/material.dart';
import 'package:todolist/model/todo.dart';
import 'package:todolist/ui/screens/home/screen_home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ScreenHome(
      todos: [Todo("title1"), Todo("title2")],
    ),
  ));
}
