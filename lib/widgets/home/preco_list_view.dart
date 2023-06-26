import 'package:flutter/material.dart';

import '../../styles/responsive.dart';
import '../my_text.dart';
import 'home_text_buttom.dart';

class PrecoColumn extends StatelessWidget {
  const PrecoColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: dp20(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText("Preço", fontSize: dp30(context), bold: true),
          HomeTextButtom(
            onPressed: () {},
            child: const MyText("Até 500 Mt", color: Colors.grey),
          ),
          HomeTextButtom(
            onPressed: () {},
            child: const MyText("De 500 a 1000 Mt", color: Colors.grey),
          ),
          HomeTextButtom(
            onPressed: () {},
            child: const MyText("De 1000 a 5000 Mt", color: Colors.grey),
          ),
          HomeTextButtom(
            onPressed: () {},
            child: const MyText("Mais de 5000 Mt", color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
