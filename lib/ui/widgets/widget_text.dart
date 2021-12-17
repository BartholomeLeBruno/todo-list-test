import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  final String content;
  final TextStyle? textStyle;
  final int maxLines;

  WidgetText(this.content, {this.textStyle, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      content,
      style: textStyle,
      maxLines: maxLines,
    );
  }
}
