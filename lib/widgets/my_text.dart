import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
    this.text, {
    Key? key,
    this.color,
    this.bold = false,
    this.fontFamily,
    this.fontSize,
    this.alignCenter = false,
    this.alignStart = false,
    this.alignEnd = false,
    this.justify = false,
    this.alignLeft = false,
    this.alignRight = false,
  }) : super(key: key);

  final String text;
  final Color? color;
  final bool bold;
  final String? fontFamily;
  final double? fontSize;
  final bool alignCenter;
  final bool alignStart;
  final bool alignEnd;
  final bool justify;
  final bool alignLeft;
  final bool alignRight;

  TextAlign get _alignment {
    if (alignCenter) {
      return TextAlign.center;
    } else if (alignEnd) {
      return TextAlign.end;
    } else if (justify) {
      return TextAlign.justify;
    } else if (alignLeft) {
      return TextAlign.left;
    } else if (alignRight) {
      return TextAlign.right;
    } else {
      return TextAlign.start;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: _alignment,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontFamily: fontFamily,
      ),
    );
  }
}
