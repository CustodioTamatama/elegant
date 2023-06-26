import 'package:flutter/material.dart';

import '../../models/chat_message.dart';
import 'mensagem.dart';
import 'mensagens_input_field.dart';

class MensagensScreenBody extends StatelessWidget {
  const MensagensScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: mensagensDoChat.length,
            itemBuilder: (context, index) => Mensagem(
              mensagem: mensagensDoChat[index],
            ),
          ),
        )),
        const MensagensInputField(),
      ],
    );
  }
}
