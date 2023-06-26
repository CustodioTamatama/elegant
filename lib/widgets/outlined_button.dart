import 'package:elegant/styles/responsive.dart';
import 'package:flutter/material.dart';

import '../styles/my_colors.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: larguraTela(context),
      height: btn(context),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white),
      ),
      color: Colors.white,
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: MyColors.primaryColor,
        ),
      ),
    );
  }
}
