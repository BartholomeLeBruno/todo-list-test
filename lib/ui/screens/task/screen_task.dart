import 'package:flutter/material.dart';
import 'package:todolist/model/todo.dart';
import 'package:todolist/ui/widgets/widget_text.dart';

class ScreenTask extends StatelessWidget {
  final Todo todo;

  ScreenTask(this.todo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetText(todo.title)),
    );
  }
}
