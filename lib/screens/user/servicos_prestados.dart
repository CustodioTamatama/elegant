import 'package:flutter/material.dart';

import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../../widgets/auth/user_text_field.dart';
import '../../widgets/elevated_button/my_elevated_button.dart';
import '../../widgets/my_back_button.dart';
import '../../widgets/my_text.dart';

class ServicosPrestadosScreen extends StatefulWidget {
  const ServicosPrestadosScreen({super.key});

  @override
  State<ServicosPrestadosScreen> createState() =>
      _ServicosPrestadosScreenState();
}

class _ServicosPrestadosScreenState extends State<ServicosPrestadosScreen> {
  String dropdownvalue = 'Tratamento';

  var items = [
    "Tratamento",
    'Bridal',
    'Cabelos',
    'Depilação',
    'Estética Corporal',
    'Estética Facial',
    "Manicure e Pedicue",
    "Massagem",
    "Outros"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: dp20(context)),
                child: const Align(
                    alignment: Alignment.topLeft, child: MyBackButton()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    'Serviços Prestados',
                    color: Colors.white,
                    fontSize: dp25(context),
                    bold: true,
                  ),
                ],
              ),
              MeusPrecosContainer(
                  height: dp20(context) * 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton(
                        style: const TextStyle(color: MyColors.primaryColor),
                        borderRadius: BorderRadius.circular(15),
                        dropdownColor: Colors.white,
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  )),
              MeusPrecosContainer(
                height: dp20(context) * 16,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: dp20(context), right: dp20(context)),
                  child: const Column(
                    children: [
                      UserTextField(labelText: "Serviço", obscureText: false),
                      UserTextField(labelText: "Valor", obscureText: false),
                      UserTextField(labelText: "Gênero", obscureText: false),
                      UserTextField(labelText: "Duração", obscureText: false)
                    ],
                  ),
                ),
              ),
              MyElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/UserScreen'),
                  title: 'Confirmar')
            ],
          ),
        ),
      ),
    );
  }
}

class MeusPrecosContainer extends StatelessWidget {
  const MeusPrecosContainer({
    Key? key,
    required this.child,
    required this.height,
  }) : super(key: key);
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: larguraTela(context),
      height: height,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25))),
      child: child,
    );
  }
}
