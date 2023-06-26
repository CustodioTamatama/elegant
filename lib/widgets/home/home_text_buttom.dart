import 'package:flutter/material.dart';

class HomeTextButtom extends StatelessWidget {
  const HomeTextButtom({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.grey),
        onPressed: onPressed,
        child: child);
  }
}
