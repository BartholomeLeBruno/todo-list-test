import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todolist/ui/widgets/widget_text.dart';

import '../utils/widget_utils.dart';

void main() {
  group('Widget WidgetText', () {
    testWidgets('Widget WidgetText contains \"Text\"', (WidgetTester tester) async {
      final testWidget = WidgetText("Text");

      await pumpWidget(tester: tester, widget: testWidget);
      expect(find.widgetWithText(WidgetText, "Text"), findsOneWidget);
    });

    testWidgets('Widget WidgetText can have his text resized automatically', (WidgetTester tester) async {
      final TextStyle textStyle = TextStyle(fontSize: 40);
      final WidgetText widgetText = WidgetText("Text", textStyle: textStyle, maxLines: 1);
      final testInfinitySize = SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widgetText,
      );

      await pumpWidget(tester: tester, widget: testInfinitySize);

      expect(tester.widget<Text>(find.byType(Text)).style!.fontSize, textStyle.fontSize);

      // Added Size Constraints to force auto-sizing

      final testLittleSize = SizedBox(
        width: 2,
        height: 2,
        child: widgetText,
      );

      await pumpWidget(tester: tester, widget: testLittleSize);

      expect(tester.widget<Text>(find.byType(Text)).style!.fontSize, isNot(equals(textStyle.fontSize)));
    });
  });
}
