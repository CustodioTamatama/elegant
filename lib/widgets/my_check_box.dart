import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: MyColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        value: checkValue,
        onChanged: (value) {
          setState(() {
            checkValue = value!;
          });
        });
  }
}
