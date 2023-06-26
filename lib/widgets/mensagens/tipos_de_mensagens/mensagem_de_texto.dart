import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';
import '../../../styles/my_colors.dart';

class MensagemDeTexto extends StatelessWidget {
  const MensagemDeTexto({
    super.key,
    required this.mensagem,
  });

  final ChatMessage mensagem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color:
            mensagem.eEmissor ? MyColors.primaryColor : MyColors.onPrimaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        mensagem.texto,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
