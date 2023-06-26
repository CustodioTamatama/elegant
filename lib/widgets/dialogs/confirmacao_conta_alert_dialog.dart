import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../my_text.dart';

class ConfirmacaoContaAlertDialog extends StatelessWidget {
  const ConfirmacaoContaAlertDialog({super.key});

  @override
  build(BuildContext context) async {
    return showDialog(
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: MyColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          actions: [
            IconButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed('/UserScreen'),
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  'E já está!',
                  color: Colors.white,
                  fontSize: dp20(context),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      'Dentro de 24 Horas iremos',
                      color: Colors.white,
                      fontSize: dp18(context),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      'Confirmar a sua conta',
                      color: Colors.white,
                      fontSize: dp18(context),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20)
          ],
        );
      },
    );
  }
}
