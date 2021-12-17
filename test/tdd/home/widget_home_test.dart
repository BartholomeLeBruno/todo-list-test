import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todolist/model/todo.dart';
import 'package:todolist/ui/screens/home/screen_home.dart';

import '../utils/widget_utils.dart';

void main() {
  group('Home Screen Nonfunctional', () {
    testWidgets('home Screen is created', (WidgetTester tester) async {
      final testWidget = ScreenHome();

      await pumpScreen(tester: tester, screen: testWidget);
      //await tester.pumpAndSettle();

      expect(find.byType(ScreenHome), findsOneWidget);
    });

    testWidgets('home Screen contains title', (WidgetTester tester) async {
      final testWidget = ScreenHome();

      await pumpScreen(tester: tester, screen: testWidget);

      expect(find.widgetWithText(ScreenHome, "Todo List"), findsOneWidget);
    });

    testWidgets('home Screen contains empty List view', (WidgetTester tester) async {
      final testWidget = ScreenHome();

      await pumpScreen(tester: tester, screen: testWidget);

      expect(find.byType(ListView), findsOneWidget);
      expect(tester.widget<ListView>(find.byType(ListView)).childrenDelegate.estimatedChildCount, 0);
    });

    testWidgets("home Screen list view with 2 elements shouldn't be empty", (WidgetTester tester) async {
      List<Todo> todoList = [Todo("title1"), Todo("title2")];
      final testWidget = ScreenHome(todos: todoList);

      await pumpScreen(tester: tester, screen: testWidget);

      expect(tester.widget<ListView>(find.byType(ListView)).childrenDelegate.estimatedChildCount, isNot(equals(0)));
    });
  });
}
