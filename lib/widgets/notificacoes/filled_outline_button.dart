import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';

class MyFilledOutlineButton extends StatelessWidget {
  const MyFilledOutlineButton({
    Key? key,
    required this.isFilled,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final bool isFilled;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: dp25(context) * 4,
      height: dp25(context) * 2.1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.grey),
      ),
      color: isFilled ? MyColors.primaryColor : Colors.transparent,
      elevation: isFilled ? 2 : 0,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? Colors.white : MyColors.primaryColor,
          fontSize: dp16(context),
        ),
      ),
    );
  }
}
