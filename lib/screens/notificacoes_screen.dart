import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/chat.dart';
import '../styles/my_colors.dart';
import '../widgets/notificacoes/chats/chat_card.dart';
import '../widgets/notificacoes/chats/chat_app_bar.dart';

class NotificacoesScreen extends StatelessWidget {
  const NotificacoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index) => ChatCard(
            chat: chatsData[index],
            aoTocar: () => Navigator.of(context).pushNamed('/MensagensScreen'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.primaryColor,
        onPressed: () {},
        child: const Icon(Ionicons.pencil_outline),
      ),
    );
  }
}
