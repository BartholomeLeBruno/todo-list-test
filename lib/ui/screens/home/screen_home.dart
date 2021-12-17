import 'package:flutter/material.dart';
import 'package:todolist/model/todo.dart';
import 'package:todolist/ui/screens/home/widgets/widget_todo_tile.dart';
import 'package:todolist/ui/widgets/widget_text.dart';

class ScreenHome extends StatelessWidget {
  final List<Todo> todos;

  ScreenHome({this.todos = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetText("Todo List"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return WidgetTodoTile(todos[index]);
        },
      ),
    );
  }
}
