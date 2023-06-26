import 'package:flutter/material.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';

class ServicosElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? title;
  final Widget child;
  const ServicosElevatedButton({
    Key? key,
    required this.onPressed,
    this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(
          sBtn(context),
          btn(context),
        ),
      ),
      child: child,
    );
  }
}
