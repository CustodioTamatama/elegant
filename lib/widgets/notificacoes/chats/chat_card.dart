import 'package:flutter/material.dart';

import '../../../models/chat.dart';
import '../../../styles/responsive.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
    required this.aoTocar,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback aoTocar;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: aoTocar,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(chat.imagem),
                  radius: 24,
                ),
                if (chat.isActive)
                  Positioned(
                    right: 5,
                    bottom: 5,
                    child: Container(
                      width: dp16(context),
                      height: dp16(context),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.nome,
                    style: TextStyle(
                        fontSize: dp16(context), fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat.ultimaMensagem,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
