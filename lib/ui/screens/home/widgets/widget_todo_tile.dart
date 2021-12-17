import 'package:flutter/material.dart';
import 'package:todolist/model/todo.dart';
import 'package:todolist/ui/screens/task/screen_task.dart';
import 'package:todolist/ui/widgets/widget_text.dart';

class WidgetTodoTile extends StatelessWidget {
  final Todo todo;

  WidgetTodoTile(this.todo);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Colors.green,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScreenTask(todo)),
        ),
        child: WidgetText(
          todo.title,
          textStyle: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
