import 'package:flutter/material.dart';

import '../../styles/responsive.dart';
import '../my_text.dart';
import 'home_text_buttom.dart';

class TratamentoListView extends StatelessWidget {
  const TratamentoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: dp20(context)),
      children: [
        SizedBox(height: dp20(context)),
        MyText("Tratamento",
            bold: true, fontSize: dp30(context), alignStart: true),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.topLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Bridal", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.topLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Cabelos", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Depilação", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Estética Corporal", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Estética Facial", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Manicure e Pedicure", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Massagem", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Outros", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context)),
        Align(
          alignment: Alignment.centerLeft,
          child: HomeTextButtom(
              onPressed: () {},
              child: const MyText("Spas", color: Colors.grey)),
        ),
        SizedBox(height: dp10(context))
      ],
    );
  }
}
