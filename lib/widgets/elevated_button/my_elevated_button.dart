import 'package:flutter/material.dart';
import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.secondaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(
          larguraTela(context),
          btn(context),
        ),
      ),
      child: Text(title),
    );
  }
}
