import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final InputDecoration? decoration;
  final Widget? prefixIcon;
  final String? hintText;
  final Color? iconColor;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final TextStyle? color;

  const MyTextField({
    Key? key,
    this.decoration,
    this.prefixIcon,
    this.hintText,
    this.iconColor,
    this.obscureText,
    this.hintStyle,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: "",
        iconColor: iconColor,
        hintStyle: hintStyle,
      ),
    );
  }
}
