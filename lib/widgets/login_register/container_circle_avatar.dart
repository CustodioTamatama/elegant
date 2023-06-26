import 'package:flutter/material.dart';

import '../../shared/assets_files.dart';
import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: larguraTela(context) / 2,
      height: larguraTela(context) / 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: MyColors.secondaryColor),
      ),
      child: InkResponse(
        onTap: () {},
        child: const CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage(AssetFiles.userPlaceholder),
        ),
      ),
    );
  }
}
