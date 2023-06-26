import 'package:flutter/material.dart';

import '../../shared/assets_files.dart';
import '../my_text.dart';

class EntradaGoogle extends StatelessWidget {
  const EntradaGoogle({
    super.key,
    required this.onGoogleTapped,
  });

  final VoidCallback onGoogleTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyText('Entrar com'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: onGoogleTapped,
              child: Image.asset(AssetFiles.google, width: 25, height: 25),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(AssetFiles.facebook, width: 25, height: 25),
            )
          ],
        )
      ],
    );
  }
}
