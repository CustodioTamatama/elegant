import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import '../widgets/elevated_button/principal_elevated_button.dart';
import '../widgets/my_back_button.dart';
import '../widgets/my_text.dart';

List<String> index = [
  'MPESA',
  'Cartão Visa Seguro (VBV)',
  'Android Pay',
  'Paypal'
];

class PagamentoScreen extends StatefulWidget {
  const PagamentoScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PagamentoScreen> createState() => _PagamentoScreenState();
}

class _PagamentoScreenState extends State<PagamentoScreen> {
  String currentIndex = index[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyBackButton(),
            Center(
              child: CircularPercentIndicator(
                radius: larguraTela(context) / 3.5,
                lineWidth: dp15(context),
                percent: 1.0,
                animationDuration: 500,
                linearGradient: const LinearGradient(colors: [
                  MyColors.onPrimaryColor,
                  MyColors.primaryColor,
                ]),
                animation: true,
                restartAnimation: true,
                backgroundColor: const Color.fromARGB(255, 234, 196, 208),
                circularStrokeCap: CircularStrokeCap.round,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText('Preço Total:', fontSize: dp14(context), bold: true),
                    MyText('3.025,00 MT', fontSize: dp24(context), bold: true),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: MyText('Cartão Visa Seguro (VBV)',
                      fontSize: dp16(context)),
                  leading: Radio(
                      activeColor: MyColors.primaryColor,
                      value: index[0],
                      groupValue: currentIndex,
                      onChanged: (value) {
                        setState(() {
                          currentIndex = value.toString();
                        });
                      }),
                ),
                ListTile(
                  title: MyText('Conta móvel', fontSize: dp16(context)),
                  leading: Radio(
                      activeColor: MyColors.primaryColor,
                      value: index[1],
                      groupValue: currentIndex,
                      onChanged: (value) {
                        setState(() {
                          currentIndex = value.toString();
                        });
                      }),
                ),
                ListTile(
                  title: MyText('E-mola', fontSize: dp16(context)),
                  leading: Radio(
                      activeColor: MyColors.primaryColor,
                      value: index[2],
                      groupValue: currentIndex,
                      onChanged: (value) {
                        setState(() {
                          currentIndex = value.toString();
                        });
                      }),
                ),
                ListTile(
                  title: MyText('Paypal', fontSize: dp16(context)),
                  leading: Radio(
                      activeColor: MyColors.primaryColor,
                      value: index[3],
                      groupValue: currentIndex,
                      onChanged: (value) {
                        setState(() {
                          currentIndex = value.toString();
                        });
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: PrincipalElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/PagoScreen'),
                  title: 'Pagar'),
            ),
          ],
        ),
      ),
    );
  }
}
