import 'package:flutter/material.dart';

import '../../styles/responsive.dart';
import '../my_text_button.dart';

class UserModalBottomSheet extends StatelessWidget {
  const UserModalBottomSheet({
    Key? key,
    required this.child,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final Widget child;
  final Widget label;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return MyTextButton(
        onPressed: () async {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: larguraTela(context) * 2,
                  child: child,
                );
              });
        },
        label: label,
        icon: icon);
  }
}
