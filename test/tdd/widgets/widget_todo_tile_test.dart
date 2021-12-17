import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todolist/model/note.dart';
import 'package:todolist/model/todo.dart';
import 'package:todolist/ui/screens/home/widgets/widget_todo_tile.dart';
import 'package:todolist/ui/screens/task/screen_task.dart';

import '../utils/widget_utils.dart';

void main() {
  group('Widget WidgetTodoTile', () {
    testWidgets('Widget WidgetTodoTile contains \"Title\"', (WidgetTester tester) async {
      final testWidget = WidgetTodoTile(Todo("Title"));

      await pumpScaffold(tester: tester, widget: testWidget);
      expect(find.widgetWithText(WidgetTodoTile, "Title"), findsOneWidget);
    });

    testWidgets('Widget WidgetTodoTile can navigate on tap to Screen with Note title as Title', (WidgetTester tester) async {
      final testWidget = Scaffold(body: WidgetTodoTile(Todo("Text", noteList: [Note("Todo Title")])));
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: testWidget,
          navigatorObservers: [mockObserver],
        ),
      );

      expect(find.byType(InkWell), findsOneWidget);

      await tester.tap(find.byType(InkWell));

      await tester.pumpAndSettle();

      verify(mockObserver.didPush(MaterialPageRoute(builder: (_) => testWidget), any));

      expect(find.byType(ScreenTask), findsOneWidget);

      expect(find.widgetWithText(ScreenTask, "Todo Title"), findsOneWidget);
    });
  });
}
