import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../shared/assets_files.dart';
import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../../utils/helper.dart';
import '../../widgets/auth/user_text_field.dart';
import '../../widgets/elevated_button/principal_elevated_button.dart';
import '../../widgets/my_back_button.dart';
import '../../widgets/my_text.dart';
import '../../widgets/my_text_button.dart';
import '../../widgets/user/alterar_senha_column.dart';
import '../../widgets/user/user_modal_bottom_sheet.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: dp20(context), right: dp20(context)),
          child: ListView(
            children: [
              SizedBox(height: dp20(context)),
              const Align(alignment: Alignment.topLeft, child: MyBackButton()),
              SizedBox(height: dp20(context)),
              Stack(
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(AssetFiles.unhas),
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 35,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Iconsax.edit)))
                ],
              ),
              Center(
                child: MyText(
                  'Luisa Silva',
                  color: MyColors.primaryColor,
                  fontSize: dp17(context) * 2,
                  fontFamily: 'Pacifico-Regular',
                  bold: true,
                ),
              ),
              SizedBox(height: dp20(context)),
              UserModalBottomSheet(
                label: const MyText("Informação Pessoal",
                    color: MyColors.primaryColor),
                icon: const Icon(Iconsax.user, color: MyColors.primaryColor),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: dp20(context), right: dp20(context)),
                  child: ListView(
                    children: [
                      SizedBox(height: dp20(context)),
                      MyText("Editar Perfil",
                          fontSize: dp20(context) * 2, bold: true),
                      const UserTextField(
                          labelText: "Nome", obscureText: false),
                      const UserTextField(
                          labelText: "Apelido", obscureText: false),
                      const UserTextField(
                          labelText: "Endereço ", obscureText: false),
                      const UserTextField(
                          labelText: "Telefone", obscureText: false),
                      const UserTextField(
                          labelText: "Email ", obscureText: false),
                      SizedBox(height: dp20(context)),
                      TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed("/ServicosPrestadosScreen"),
                          child: const MyText("Serviços prestados")),
                      SizedBox(height: dp20(context)),
                      PrincipalElevatedButton(
                          onPressed: () {}, title: "ATUALIZAR PERFIL"),
                      SizedBox(height: dp20(context)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: dp20(context)),
              const UserModalBottomSheet(
                  label: MyText(
                    "Pagar Subscrição",
                    color: MyColors.primaryColor,
                  ),
                  icon: Icon(Iconsax.bill, color: MyColors.primaryColor),
                  child: Column()),
              SizedBox(height: dp20(context)),
              UserModalBottomSheet(
                icon:
                    const Icon(Iconsax.security, color: MyColors.primaryColor),
                label:
                    const MyText('Alterar Senha', color: MyColors.primaryColor),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: dp20(context), right: dp20(context)),
                  child: const AlterarSenhaColumn(),
                ),
              ),
              SizedBox(height: dp20(context)),
              UserModalBottomSheet(
                  icon: const Icon(Iconsax.message_question,
                      color: MyColors.primaryColor),
                  label: const MyText(
                    'Fale conosco',
                    color: MyColors.primaryColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        "Ajuda",
                        color: MyColors.primaryColor,
                        bold: true,
                        fontSize: dp15(context) * 2,
                      ),
                      SizedBox(height: dp10(context)),
                      MyTextButton(
                          onPressed: () async {
                            await makePhoneCall("+258870137377");
                          },
                          label: const MyText("Faça-nos uma ligação",
                              color: Colors.grey),
                          icon: const Icon(Iconsax.call_outgoing,
                              color: Colors.grey)),
                      SizedBox(height: dp10(context)),
                      MyTextButton(
                          onPressed: () async {
                            await sendMail(
                                email: "custodiotamatama@gmail.com",
                                subject: "From Elegant App ");
                          },
                          label:
                              const MyText("Enviar email", color: Colors.grey),
                          icon: const Icon(Iconsax.message, color: Colors.grey))
                    ],
                  )),
              SizedBox(height: dp20(context)),
              MyTextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/MyBottomNavigationBar'),
                  icon:
                      const Icon(Iconsax.logout, color: MyColors.primaryColor),
                  label: const MyText('Sair', color: MyColors.primaryColor)),
              SizedBox(height: dp20(context)),
            ],
          ),
        ),
      ),
    );
  }
}
