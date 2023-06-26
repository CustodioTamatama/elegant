import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Iconsax.arrow_square_left,
          color: Colors.grey,
        ));
  }
}
