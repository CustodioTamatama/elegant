import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';

class UserTextField extends StatelessWidget {
  const UserTextField({
    Key? key,
    required this.labelText,
    required this.obscureText,
  }) : super(key: key);

  final String labelText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: MyColors.primaryColor),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: MyColors.primaryColor))),
    );
  }
}
