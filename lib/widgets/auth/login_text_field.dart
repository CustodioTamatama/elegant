import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    required this.obscureText,
    this.prefixIcon,
    this.hintText,
    this.labelText,
    required this.controller,
  }) : super(key: key);

  final bool obscureText;
  final Widget? prefixIcon;
  final String? hintText;
  final String? labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      controller: controller,
      validator: (value) {
        if (value != null && value.isEmpty) return 'campo obrigatorio';
        
        return null;
      },
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.primaryColor),
              borderRadius: BorderRadius.circular(25)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.primaryColor),
              borderRadius: BorderRadius.circular(25)),
          prefixIcon: prefixIcon,
          prefixIconColor: MyColors.primaryColor,
          hintText: hintText,
          iconColor: MyColors.primaryColor,
          labelText: labelText,
          labelStyle: const TextStyle(color: MyColors.primaryColor)),
    );
  }
}
