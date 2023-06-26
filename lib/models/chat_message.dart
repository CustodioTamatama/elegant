enum TipoDeMensagem {
  texto,
  imagem,
  audio,
  video,
}

enum EstadoDaMensagem {
  naoEnviado,
  naoVisualizado,
  visualizado,
}

class ChatMessage {
  final String texto;
  final TipoDeMensagem tipoDeMensagem;
  final EstadoDaMensagem estadoDaMensagem;
  final bool eEmissor;
  ChatMessage({
    required this.texto,
    required this.tipoDeMensagem,
    required this.estadoDaMensagem,
    required this.eEmissor,
  });
}

List mensagensDoChat = [
  ChatMessage(
    texto: 'Óla Luisa',
    tipoDeMensagem: TipoDeMensagem.texto,
    estadoDaMensagem: EstadoDaMensagem.visualizado,
    eEmissor: false,
  ),
  ChatMessage(
    texto: 'Oi, como está?',
    tipoDeMensagem: TipoDeMensagem.texto,
    estadoDaMensagem: EstadoDaMensagem.visualizado,
    eEmissor: true,
  ),
  ChatMessage(
    texto: '',
    tipoDeMensagem: TipoDeMensagem.audio,
    estadoDaMensagem: EstadoDaMensagem.visualizado,
    eEmissor: false,
  ),
  ChatMessage(
      texto: '',
      tipoDeMensagem: TipoDeMensagem.video,
      estadoDaMensagem: EstadoDaMensagem.visualizado,
      eEmissor: true)
];
