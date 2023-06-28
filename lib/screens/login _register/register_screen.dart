// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import '../../enums.dart/e_role.dart';
import '../../main.dart';
import '../../models/usuario_model.dart';
import '../../services/auth_service.dart';
import '../../styles/my_colors.dart';
import '../../styles/responsive.dart';
import '../../widgets/auth/login_text_field.dart';
import '../../widgets/dialogs/confirmacao_conta_alert_dialog.dart';
import '../../widgets/my_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nomeController = TextEditingController();
  final _apelidoController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  final _usuarioModel = UsuarioModel();
  final _authService = AuthService();

  var _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  "Cadastrar",
                  color: MyColors.primaryColor,
                  fontSize: dp17(context) * 2,
                  bold: true,
                ),
                Column(
                  children: [
                    LoginTextField(
                      prefixIcon: const Icon(Iconsax.user),
                      labelText: 'Nome',
                      hintText: "Insira seu nome",
                      obscureText: false,
                      controller: _nomeController,
                    ),
                    const SizedBox(height: 20),
                    LoginTextField(
                      obscureText: false,
                      prefixIcon: const Icon(
                        Iconsax.user,
                      ),
                      labelText: 'Apelido',
                      hintText: "Insira seu apelido",
                      controller: _apelidoController,
                    ),
                    const SizedBox(height: 20),
                    LoginTextField(
                      prefixIcon: const Icon(
                        Iconsax.call,
                      ),
                      labelText: 'Telefone',
                      hintText: "Insira seu número de celular",
                      controller: _telefoneController,
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    LoginTextField(
                        prefixIcon: const Icon(
                          Ionicons.mail_outline,
                        ),
                        labelText: 'Email',
                        hintText: " Insira seu email",
                        controller: _emailController,
                        obscureText: false),
                    const SizedBox(height: 20),
                    LoginTextField(
                      obscureText: true,
                      prefixIcon: const Icon(
                        Ionicons.lock_closed_outline,
                      ),
                      labelText: 'Senha',
                      hintText: "Digite uma senha",
                      controller: _senhaController,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: MyColors.primaryColor, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () async {
                        setState(() {
                          _loading = true;
                        });

                        _usuarioModel.nome = _nomeController.text;
                        _usuarioModel.role = ERole.cliente;
                        _usuarioModel.apelido = _apelidoController.text;
                        _usuarioModel.telefone = _telefoneController.text;
                        _usuarioModel.email = _emailController.text;
                        _usuarioModel.senha = _senhaController.text;

                        try {
                          final usuarioRetorno =
                              await _authService.register(_usuarioModel);
                          if (usuarioRetorno != null) {
                            const ConfirmacaoContaAlertDialog();
                          }
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            scaffoldMessengerKey.currentState?.showSnackBar(
                              const SnackBar(
                                content: MyText('Senha muito fraca'),
                              ),
                            );
                          } else if (e.code == 'email-already-in-use') {
                            scaffoldMessengerKey.currentState?.showSnackBar(
                              const SnackBar(
                                content: MyText('Este email já existe'),
                              ),
                            );
                          }
                        } catch (e) {
                          scaffoldMessengerKey.currentState?.showSnackBar(
                            const SnackBar(
                              content: MyText('Ocorreu um erro desconhecido'),
                            ),
                          );
                        } finally {
                          setState(() {
                            _loading = false;
                          });
                        }
                      },
                      icon: _loading
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : const Icon(
                              Iconsax.arrow_right_1,
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText('Possui conta?',
                        color: MyColors.primaryColor, bold: true),
                    TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/LoginScreen'),
                        child: const MyText('Entrar ',
                            color: MyColors.onPrimaryColor, bold: true))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
