import 'package:elegant/styles/responsive.dart';
import 'package:flutter/material.dart';

import '../../shared/assets_files.dart';
import '../my_text.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
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
            _socialAuthTile(
              context,
              socialImg: AssetFiles.google,
              onPressed: onGoogleTapped,
            ),
            _socialAuthTile(
              context,
              socialImg: AssetFiles.facebook,
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }

  Widget _socialAuthTile(
    BuildContext context, {
    required VoidCallback onPressed,
    required String socialImg,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(dp20(context)),
        child: Image.asset(socialImg, width: 25, height: 25),
      ),
    );
  }
}
