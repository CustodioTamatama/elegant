import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';
import '../../../styles/my_colors.dart';
import '../../../styles/responsive.dart';
import '../../my_text.dart';

class MensagemDeAudio extends StatelessWidget {
  const MensagemDeAudio({
    Key? key,
    required this.mensagem,
  }) : super(key: key);

  final ChatMessage mensagem;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: larguraTela(context) * 0.55,
      height: 30,
      padding: EdgeInsets.symmetric(
        horizontal: dp20(context) * 0.75,
        vertical: dp20(context) / 2.5,
      ),
      decoration: BoxDecoration(
        color:
            mensagem.eEmissor ? MyColors.primaryColor : MyColors.onPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.white,
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const MyText(
            '0.37',
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
