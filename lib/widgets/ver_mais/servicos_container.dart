import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../my_text.dart';

class ServicosContainer extends StatelessWidget {
  const ServicosContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: larguraTela(context),
      height: larguraTela(context) / 5,
      color: MyColors.primaryColor,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TextButton(
            onPressed: () {},
            child: const MyText('Bridal', color: Colors.white),
          ),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Cabelos', color: Colors.white)),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Depilação', color: Colors.white)),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText(
                'Estética Corporal',
                color: Colors.white,
              )),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Estética Facial', color: Colors.white)),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Manicure e Pedicure', color: Colors.white)),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Massagem', color: Colors.white)),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Outros', color: Colors.white)),
          const SizedBox(width: 10),
          TextButton(
              onPressed: () {},
              child: const MyText('Spa´s', color: Colors.white)),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
