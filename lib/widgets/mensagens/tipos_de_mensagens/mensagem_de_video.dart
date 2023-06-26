import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';
import '../../../styles/my_colors.dart';
import '../../../styles/responsive.dart';

class MensagemDeVideo extends StatelessWidget {
  const MensagemDeVideo({
    Key? key,
    required this.mensagem,
  }) : super(key: key);
  final ChatMessage mensagem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: larguraTela(context) * 0.45,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1.6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/maquiagem.jpg',
              ),
            ),
          ),
          Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              color: MyColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: dp16(context),
            ),
          ),
        ],
      ),
    );
  }
}
