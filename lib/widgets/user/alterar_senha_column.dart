import 'package:flutter/material.dart';

import '../../styles/responsive.dart';
import '../my_text.dart';

class AlterarSenhaColumn extends StatelessWidget {
  const AlterarSenhaColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyText("Alterar Senha", fontSize: dp20(context) * 2, bold: true),
        // LoginTextField(labelText: "Senha atual", obscureText: true),
        // LoginTextField(obscureText: true, labelText: "Nova Senha"),
        // const LoginTextField(
        //     obscureText: true, labelText: "Confirmar nova senha"),
        // PrincipalElevatedButton(onPressed: () {}, title: "ALTERAR SENHA")
      ],
    );
  }
}
