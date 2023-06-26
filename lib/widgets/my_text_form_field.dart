import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    this.color,
    this.style,
    this.hintStyle,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIcon,
    this.hintText,
  }) : super(key: key);

  final Color? color;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Widget? prefixIcon;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.transparent, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        style: style,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,
            border: InputBorder.none,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconColor: suffixIconColor),
      ),
    );
  }
}
