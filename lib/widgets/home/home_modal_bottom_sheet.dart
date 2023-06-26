import 'package:flutter/material.dart';

import '../servicos_elevated_buttom.dart';

class HomeModalBottomSheet extends StatelessWidget {
  const HomeModalBottomSheet({
    Key? key,
    required this.child,
    required this.height,
    required this.children,
  }) : super(key: key);

  final Widget child;
  final double height;
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return ServicosElevatedButton(
        onPressed: () async {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: height,
                  child: children,
                );
              });
        },
        child: child);
  }
}
