import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../shared/assets_files.dart';
import '../../styles/responsive.dart';
import '../../widgets/elevated_button/principal_elevated_button.dart';
import '../../widgets/my_back_button.dart';
import '../../widgets/my_text.dart';
import '../../widgets/my_text_button.dart';

class VerMaisScreen extends StatefulWidget {
  const VerMaisScreen({super.key});

  @override
  State<VerMaisScreen> createState() => _VerMaisScreenState();
}

class _VerMaisScreenState extends State<VerMaisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: larguraTela(context) / 1.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetFiles.unhas)),
                    ),
                  ),
                  const Positioned(child: MyBackButton())
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child:
                    MyText('Luisa Silva', fontSize: dp28(context), bold: true),
              ),
              Center(
                  child: MyTextButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed("/LocalizacaoScreen"),
                      label: const MyText("Ver Mapa"),
                      icon: const Icon(Iconsax.map))),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: MyText('Avenida Marginal, 805/6, Maputo (triunfo)'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Icon(Iconsax.clock),
                    SizedBox(width: 5),
                    MyText('Aberto / Fechado'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Iconsax.star1, color: Colors.amber),
                    Icon(Iconsax.star1, color: Colors.amber),
                    Icon(Iconsax.star1, color: Colors.amber),
                    Icon(Iconsax.star1, color: Colors.amber),
                    Icon(Iconsax.star1),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: PrincipalElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/ServicosScreen'),
                    title: 'Serviços'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
