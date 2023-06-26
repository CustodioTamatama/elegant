import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget label;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: onPressed,
        label: label,
        icon: icon,
      ),
    );
  }
}
