import 'dart:convert';

import '../enums.dart/e_role.dart';
import '../firestore/collections.dart';
import '../firestore/firestore_db.dart';
import 'endereco_model.dart';

class UsuarioModel {
  String? id;
  String? senha;
  String? nome;
  String? apelido;
  String? telefone;
  String? email;
  ERole? role;
  final EnderecoModel? endereco;
  UsuarioModel({
    this.id,
    this.nome,
    this.apelido,
    this.telefone,
    this.email,
    this.endereco,
    this.role,
    this.senha,
  });

  Future<UsuarioModel?> post() async {
    final success = await FirestoreDb.inserir(Collections.users, id!, toMap());

    if (success) {
      final snap = await FirestoreDb.obterPorId(
        Collections.users,
        id!,
      );

      return UsuarioModel.fromMap(
        snap.data() as Map<String, dynamic>,
      );
    }

    return null;
  }

  Future<UsuarioModel?> get() async {
    final snap = await FirestoreDb.obterPorCampo(
      Collections.users,
      email!,
      'email',
    );

    return UsuarioModel.fromMap(
      snap.docs.first.data(),
    );
  }

  static ERole obterRolePorValor(int valor) {
    return switch (valor) {
      0 => ERole.cliente,
      1 => ERole.profissional,
      2 => ERole.admin,
      _ => ERole.cliente,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'role': role!.valor,
      'nome': nome,
      'apelido': apelido,
      'telefone': telefone,
      'email': email,
      'endereco': endereco?.toMap(),
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
        id: map['id'] ?? '',
        role: obterRolePorValor(map['role']),
        nome: map['nome'] ?? '',
        apelido: map['apelido'] ?? '',
        telefone: map['telefone'] ?? '',
        email: map['email'] ?? '',
        endereco: map['endereco'] != null
            ? EnderecoModel.fromMap(map['endereco'])
            : null);
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(json.decode(source));
}
