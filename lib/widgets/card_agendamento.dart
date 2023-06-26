import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../shared/assets_files.dart';
import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import 'my_text.dart';

class CardAgendamento extends StatelessWidget {
  const CardAgendamento({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage(AssetFiles.unhas),
        ),
        title: const MyText('Elisa Sousa', bold: true),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: larguraTela(context) / 2,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Matola Moçambique',
                      style: TextStyle(
                          fontSize: dp16(context),
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(Iconsax.clock, size: dp20(context)),
                const SizedBox(width: 2),
                MyText('14:00', fontSize: dp16(context)),
                const SizedBox(width: 2),
                ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/LocalizacaoScreen'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.black.withOpacity(0.75)),
                    child: MyText(
                      'Onde fica?',
                      fontSize: dp14(context),
                    ))
              ],
            )
          ],
        ),
        trailing: const Column(
          children: [
            MyText(
              '01',
              color: MyColors.primaryColor,
              bold: true,
            ),
            MyText(
              'AGO',
              color: MyColors.primaryColor,
              bold: true,
            )
          ],
        ),
      ),
    );
  }
}
