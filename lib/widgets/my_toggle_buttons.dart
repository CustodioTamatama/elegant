import 'package:flutter/material.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import 'my_text.dart';

class MyToggleButtons extends StatelessWidget {
  const MyToggleButtons({
    Key? key,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final List<bool> isSelected;
  final Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      color: Colors.white,
      selectedColor: MyColors.primaryColor,
      borderColor: MyColors.primaryColor,
      selectedBorderColor: Colors.white,
      fillColor: Colors.white,
      renderBorder: false,
      borderRadius: BorderRadius.circular(10),
      isSelected: isSelected,
      onPressed: onPressed,
      children: [
        Column(
          children: [
            MyText(
              'SEG',
              fontSize: dp20(context),
            ),
            MyText(
              '22',
              fontSize: dp20(context),
            ),
          ],
        ),
        Column(
          children: [
            MyText(
              'TER',
              fontSize: dp20(context),
            ),
            MyText(
              '23',
              fontSize: dp20(context),
            ),
          ],
        ),
        Column(
          children: [
            MyText(
              'QUA',
              fontSize: dp20(context),
            ),
            MyText(
              '24',
              fontSize: dp20(context),
            ),
          ],
        ),
        Column(
          children: [
            MyText(
              'QUI',
              fontSize: dp20(context),
            ),
            MyText(
              '25',
              fontSize: dp20(context),
            ),
          ],
        ),
        Column(
          children: [
            MyText(
              'SEX',
              fontSize: dp20(context),
            ),
            MyText(
              '26',
              fontSize: dp20(context),
            ),
          ],
        ),
      ],
    );
  }
}
