import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import '../widgets/my_text.dart';
import '../widgets/servicos_elevated_buttom.dart';

class PagoScreen extends StatelessWidget {
  const PagoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/MyBottomNavigationBar'),
                  icon: const Icon(Iconsax.close_square),
                  alignment: Alignment.topRight),
              Column(
                children: [
                  Center(
                    child: CircularPercentIndicator(
                        radius: larguraTela(context) / 3.5,
                        lineWidth: dp15(context),
                        percent: 1.0,
                        linearGradient: const LinearGradient(colors: [
                          MyColors.onPrimaryColor,
                          MyColors.primaryColor,
                        ]),
                        backgroundColor:
                            const Color.fromARGB(255, 234, 196, 208),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Icon(
                          Ionicons.checkmark,
                          color: MyColors.primaryColor,
                          size: xLBtn(context),
                        )),
                  ),
                  const MyText('Serviço Pago')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ServicosElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Iconsax.messages_1, size: dp20(context)),
                        const SizedBox(width: 10),
                        MyText(
                          'Ir ao chat',
                          color: Colors.white,
                          fontSize: dp20(context),
                        )
                      ],
                    ),
                  ),
                  ServicosElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Iconsax.call, size: dp20(context)),
                        const SizedBox(width: 10),
                        MyText('Ligar',
                            color: Colors.white, fontSize: dp20(context)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
