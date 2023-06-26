import 'package:flutter/material.dart';

class MyPrimaryBuutton extends StatelessWidget {
  const MyPrimaryBuutton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color,
    this.padding,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      minWidth: double.infinity,
      padding: padding,
      color: color,
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
