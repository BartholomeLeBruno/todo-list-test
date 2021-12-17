import 'package:flutter/material.dart';
import 'package:todolist/model/note.dart';
import 'package:todolist/ui/widgets/widget_text.dart';

class WidgetNoteTile extends StatefulWidget {
  final Note note;

  WidgetNoteTile(this.note);

  @override
  State<WidgetNoteTile> createState() => _WidgetNoteTileState();
}

class _WidgetNoteTileState extends State<WidgetNoteTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Colors.green,
      child: Row(
        children: [
          WidgetText(
            widget.note.contentMessage,
            textStyle: TextStyle(
              fontSize: 20,
            ),
          ),
          Checkbox(
            value: widget.note.status,
            onChanged: (value) {
              setState(() {
                widget.note.status = value;
              });
            },
          )
        ],
      ),
    );
  }
}
