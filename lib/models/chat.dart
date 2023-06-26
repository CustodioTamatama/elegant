import 'package:elegant/shared/assets_files.dart';

class Chat {
  final String nome;
  final String ultimaMensagem;
  final String imagem;

  final bool isActive;

  Chat(
    this.nome,
    this.ultimaMensagem,
    this.imagem,
    this.isActive,
  );
}

List chatsData = [
  Chat(
    'Luisa Silva',
    'Chegue cedo',
    AssetFiles.userPlaceholder,
    true,
  ),
  Chat(
    'Marta Mendes',
    'Não atrase',
    AssetFiles.userPlaceholder,
    false,
  ),
  Chat(
    'Elisa Souza',
    'Não atrase',
    AssetFiles.userPlaceholder,
    false,
  ),
  Chat(
    'Luisa Silva',
    'Não atrase',
    AssetFiles.userPlaceholder,
    true,
  ),
  Chat(
    'Marta Mendes',
    'Não atrase',
    AssetFiles.userPlaceholder,
    false,
  ),
  Chat(
    'Elisa Souza',
    'Não atrase',
    AssetFiles.userPlaceholder,
    false,
  ),
  Chat(
    'Luisa Silva',
    'Não atrase',
    AssetFiles.userPlaceholder,
    false,
  ),
  Chat(
    'Marta Mendes',
    'Não atrase',
    AssetFiles.userPlaceholder,
    false,
  ),
];
