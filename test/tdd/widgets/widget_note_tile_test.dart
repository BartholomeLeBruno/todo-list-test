import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todolist/model/note.dart';
import 'package:todolist/ui/screens/task/widgets/widget_note_tile.dart';

import '../utils/widget_utils.dart';

void main() {
  group('Widget Note Tile', () {
    testWidgets('Widget WidgetNoteTile contains \"Title\"', (WidgetTester tester) async {
      final testWidget = WidgetNoteTile(Note("Title"));

      await pumpScaffold(tester: tester, widget: testWidget);
      expect(find.widgetWithText(WidgetNoteTile, "Title"), findsOneWidget);
    });

    testWidgets('Widget WidgetNoteTile can set status from false (= default value) to true', (WidgetTester tester) async {
      final testWidget = WidgetNoteTile(Note("Text"));
      await pumpScaffold(tester: tester, widget: testWidget);

      expect(testWidget.note.status, false);

      await tester.tap(find.byType(Checkbox));

      await tester.pumpAndSettle();

      expect(testWidget.note.status, true);
    });
  });
}
