import 'package:flutter/material.dart';

import '../../widgets/my_check_box.dart';
import '../../styles/responsive.dart';
import '../../widgets/my_text.dart';

class CardServicos extends StatefulWidget {
  const CardServicos({
    super.key,
  });

  @override
  State<CardServicos> createState() => _CardServicosState();
}

class _CardServicosState extends State<CardServicos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: larguraTela(context) / 3.5,
        child: const Center(
          child: ListTile(
            leading: Column(
              children: [
                Expanded(child: MyCheckBox()),
                MyText("Duração", color: Colors.grey, bold: true),
              ],
            ),
            title: MyText("Lavar", bold: true),
            subtitle: MyText("Sexo", color: Colors.grey),
            trailing: MyText("Valor", bold: true),
          ),
        ),
      ),
    );
  }
}
