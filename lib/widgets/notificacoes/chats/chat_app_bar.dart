import 'package:flutter/material.dart';

import '../../../styles/my_colors.dart';
import '../../my_text.dart';

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: MyColors.primaryColor,
    title: const MyText('Notificações'),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search_outlined,
        ),
      ),
    ],
  );
}
