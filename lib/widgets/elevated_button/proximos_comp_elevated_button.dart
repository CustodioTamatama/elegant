import 'package:flutter/material.dart';

import '../../styles/responsive.dart';

class ProximosCompElevatedButton extends StatelessWidget {
  const ProximosCompElevatedButton({
    Key? key,
    required this.onPressed,
    this.backgroundColor,
    this.child,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(larguraTela(context), btn(context)),
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: child);
  }
}
