import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../elevated_button/my_elevated_button.dart';
import '../my_text.dart';
import 'confirmacao_conta_alert_dialog.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key});

  @override
  build(BuildContext context) async {
    return showDialog(
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const MyText(
            'Código de Confirmação',
            color: Colors.white,
            alignCenter: true,
          ),
          titlePadding: const EdgeInsets.all(10),
          backgroundColor: MyColors.primaryColor,
          actions: [
            const Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AuthTextField(),
                  AuthTextField(),
                  AuthTextField(),
                  AuthTextField(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MyElevatedButton(
                onPressed: () async {
                  const ConfirmacaoContaAlertDialog();
                },
                title: 'Confirmar'),
            const SizedBox(height: 10)
          ],
        );
      },
    );
  }
}
