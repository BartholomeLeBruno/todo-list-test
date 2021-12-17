import 'package:todolist/model/note.dart';

class Todo {
  final String title;
  final List<Note> noteList;

  Todo(this.title, {this.noteList = const []});

  Todo copyWith({
    String? title,
    List<Note>? noteList,
  }) {
    return Todo(
      title ?? this.title,
      noteList: noteList ?? this.noteList,
    );
  }

  @override
  String toString() {
    return 'Todo{title: $title, noteList: $noteList}';
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'noteList': this.noteList,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      map['title'] as String,
      noteList: map['noteList'] as List<Note>,
    );
  }
}
