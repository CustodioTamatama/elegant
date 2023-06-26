// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:elegant/styles/my_colors.dart';
import 'package:elegant/styles/responsive.dart';
import 'package:elegant/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import '../../main.dart';
import '../../models/usuario_model.dart';
import '../../services/auth_service.dart';
import '../../widgets/elevated_button/principal_elevated_button.dart';
import '../../widgets/auth/entrada_google_facebook.dart';
import '../../widgets/auth/login_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  final _usuarioModel = UsuarioModel();
  final _authService = AuthService();

  var _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  "Iniciar sessão",
                  color: MyColors.primaryColor,
                  fontSize: dp20(context) * 2,
                  bold: true,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoginTextField(
                      obscureText: false,
                      labelText: 'Email',
                      controller: _emailController,
                      prefixIcon: const Icon(
                        Ionicons.mail_outline,
                      ),
                      hintText: 'Insira seu email',
                    ),
                    const SizedBox(height: 20),
                    LoginTextField(
                      labelText: 'Senha',
                      obscureText: true,
                      prefixIcon: const Icon(
                        Ionicons.lock_closed_outline,
                      ),
                      controller: _senhaController,
                      hintText: "Digite sua senha",
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const MyText(
                            "Esqueceu sua senha?",
                            color: MyColors.primaryColor,
                          )),
                    )
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
                          _usuarioModel.email = _emailController.text.trim();
                          _usuarioModel.senha = _senhaController.text.trim();

                          try {
                            final usuarioRetorno =
                                await _authService.login(_usuarioModel);
                            if (usuarioRetorno != null) {
                              Navigator.of(context).pushReplacementNamed(
                                '/MyBottomNavigationBar',
                              );
                            }
                          } on FirebaseAuthException catch (e) {
                            scaffoldMessengerKey.currentState?.showSnackBar(
                              SnackBar(content: MyText(e.message!)),
                            );
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
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                              )
                            : const Icon(
                                Iconsax.arrow_right_1,
                                color: Colors.white,
                              ),
                      )),
                ),
                EntradaGoogle(
                  onGoogleTapped: () async {
                    try {
                      showLoadingDialog(context);
                      final usuarioRetorno = await _authService.googleAuth();
                      if (usuarioRetorno != null) {
                        Navigator.of(context).pushReplacementNamed(
                          '/MyBottomNavigationBar',
                        );
                      }
                    } on FirebaseAuthException catch (e) {
                      scaffoldMessengerKey.currentState?.showSnackBar(
                        SnackBar(content: MyText(e.message!)),
                      );
                    } catch (e) {
                      scaffoldMessengerKey.currentState?.showSnackBar(
                        SnackBar(
                          content: MyText(
                            'Ocorreu o seguinte erro: ${e.toString()}',
                          ),
                        ),
                      );
                    } finally {
                      Navigator.pop(context);
                    }
                  },
                ),
                PrincipalElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/RegisterScreen'),
                    title: 'Cadastrar'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText('Possui conta profissional?',
                        color: MyColors.primaryColor, bold: true),
                    TextButton(
                        onPressed: () {},
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

Future<T?> showLoadingDialog<T>(BuildContext context) async {
  return showDialog<T>(
      context: context,
      builder: (context) {
        return SizedBox(
          height: alturaTela(context),
          width: larguraTela(context),
          child: const Center(child: CircularProgressIndicator()),
        );
      });
}
