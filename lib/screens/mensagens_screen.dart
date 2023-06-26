import 'package:flutter/material.dart';

import '../shared/assets_files.dart';
import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import '../widgets/mensagens/mensagens_screen_body.dart';
import '../widgets/my_back_button.dart';
import '../widgets/my_text.dart';

class MensagensScreen extends StatelessWidget {
  const MensagensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: biuldMenagensAppBar(context),
      body: const SafeArea(child: MensagensScreenBody()),
    );
  }

  AppBar biuldMenagensAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const MyBackButton(),
          const CircleAvatar(
            backgroundImage: AssetImage(AssetFiles.userPlaceholder),
          ),
          SizedBox(width: dp20(context)),
          MyText(
            'Vânia José',
            fontSize: dp16(context),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.local_phone,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.videocam,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
