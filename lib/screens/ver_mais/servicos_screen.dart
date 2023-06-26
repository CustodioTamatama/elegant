import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../../widgets/my_back_button.dart';
import '../../widgets/my_text.dart';
import 'card_servicos.dart';

class ServicosScreen extends StatefulWidget {
  const ServicosScreen({super.key});

  @override
  State<ServicosScreen> createState() => _ServicosScreenState();
}

class _ServicosScreenState extends State<ServicosScreen> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Column(
              children: [
                const MyText(
                  'Selecionar serviços',
                  color: Colors.white,
                  bold: true,
                ),
                SizedBox(
                  width: larguraTela(context),
                  height: dp20(context) * 2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Bridal', color: Colors.white)),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Cabelos', color: Colors.white)),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText(
                            'Depilação',
                            color: Colors.white,
                          )),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Estética Corporal',
                              color: Colors.white)),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Estética Facial',
                              color: Colors.white)),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Manicure e Pedicure',
                              color: Colors.white)),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Massagem', color: Colors.white)),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const MyText('Outros', color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: MyColors.primaryColor,
            automaticallyImplyLeading: false,
            leading: const MyBackButton(),
            pinned: true,
            floating: true,
            expandedHeight: 205,
            actions: [
              IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/MyBottomNavigationBar'),
                  icon: const Icon(Iconsax.close_square, color: Colors.white))
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return const CardServicos();
          }))
        ],
      ),
    );
  }
}
