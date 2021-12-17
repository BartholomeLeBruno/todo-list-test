import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

Future pumpWidget({
  required WidgetTester tester,
  required Widget widget,
}) async {
  await tester.pumpWidget(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: widget,
      ),
    ),
  );
}

Future pumpScreen({
  required WidgetTester tester,
  required Widget screen,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: screen,
    ),
  );
}

Future pumpScaffold({
  required WidgetTester tester,
  required Widget widget,
}) async {
  final mockObserver = MockNavigatorObserver();
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(body: widget),
      navigatorObservers: [mockObserver],
    ),
  );
}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}
