import 'package:flutter/material.dart';

import '../../models/chat_message.dart';
import '../../shared/assets_files.dart';
import '../../styles/my_colors.dart';
import 'tipos_de_mensagens/mensagem_de_audio.dart';
import 'tipos_de_mensagens/mensagem_de_texto.dart';
import 'tipos_de_mensagens/mensagem_de_video.dart';

class Mensagem extends StatelessWidget {
  const Mensagem({
    Key? key,
    required this.mensagem,
  }) : super(key: key);
  final ChatMessage mensagem;
  @override
  Widget build(BuildContext context) {
    Widget mensagemContaint(ChatMessage mensagem) {
      switch (mensagem.tipoDeMensagem) {
        case TipoDeMensagem.texto:
          return MensagemDeTexto(mensagem: mensagem);
        case TipoDeMensagem.audio:
          return MensagemDeAudio(mensagem: mensagem);
        case TipoDeMensagem.video:
          return MensagemDeVideo(mensagem: mensagem);
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment:
            mensagem.eEmissor ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!mensagem.eEmissor) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(AssetFiles.userPlaceholder),
            ),
            const SizedBox(width: 10)
          ],

          // MensagemDeTexto(mensagem: mensagem),
          mensagemContaint(mensagem),
          const SizedBox(width: 10),
          if (mensagem.eEmissor) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(AssetFiles.userPlaceholder),
            ),
            if (mensagem.eEmissor)
              PontoDeVisualizacao(estado: mensagem.estadoDaMensagem),
          ],
        ],
      ),
    );
  }
}

class PontoDeVisualizacao extends StatelessWidget {
  const PontoDeVisualizacao({
    Key? key,
    required this.estado,
  }) : super(key: key);

  final EstadoDaMensagem estado;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 12,
      height: 12,
      decoration: const BoxDecoration(
          color: MyColors.primaryColor, shape: BoxShape.circle),
      child: Icon(
        estado == EstadoDaMensagem.naoEnviado ? Icons.close : Icons.done,
        size: 8,
        color: Colors.white,
      ),
    );
  }
}
