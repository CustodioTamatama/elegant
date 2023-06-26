import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class EnderecoModel {
  final String cidade;
  final String bairro;
  final String quarteirao;
  final String numero;
  final GeoPoint geo;
  EnderecoModel({
    required this.cidade,
    required this.bairro,
    required this.quarteirao,
    required this.numero,
    required this.geo,
  });

  Map<String, dynamic> toMap() {
    return {
      'cidade': cidade,
      'bairro': bairro,
      'quarteirao': quarteirao,
      'numero': numero,
      'geo': geo,
    };
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      cidade: map['cidade'] ?? '',
      bairro: map['bairro'] ?? '',
      quarteirao: map['quarteirao'] ?? '',
      numero: map['numero'] ?? '',
      geo: map['geo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EnderecoModel.fromJson(String source) =>
      EnderecoModel.fromMap(json.decode(source));
}
