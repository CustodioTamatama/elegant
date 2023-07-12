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
import '../../widgets/auth/social_auth_button.dart';
import '../../widgets/auth/login_text_field.dart';
import '../../widgets/my_intrinsic_height.dart';

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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyIntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: dp20(context),
                  vertical: dp30(context),
                ),
                child: MyText(
                  "Iniciar sessão",
                  color: MyColors.primaryColor,
                  fontSize: dp20(context) * 2,
                  bold: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dp20(context)),
                child: Form(
                  key: _formKey,
                  child: Column(
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
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: dp20(context)),
                child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: MyColors.primaryColor, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () async {
                        if (_formKey.currentState?.validate() ?? false) {
                          setState(() {
                            _loading = true;
                          });
                          _usuarioModel.email = _emailController.text.trim();
                          _usuarioModel.senha = _senhaController.text.trim();

                          try {
                            final result =
                                await _authService.login(_usuarioModel);
                            if (result != null) {
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
                    )),
              ),
              SizedBox(height: dp20(context)),
              SocialAuthButton(
                onGoogleTapped: () async {
                  try {
                    showLoadingDialog(context);
                    UsuarioModel.usuarioLogado =
                        await _authService.googleAuth();
                    if (UsuarioModel.usuarioLogado != null) {
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
              SizedBox(height: dp10(context)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dp20(context)),
                child: PrincipalElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed('/RegisterScreen'),
                  title: 'Cadastrar',
                ),
              ),
              SizedBox(height: dp10(context)),
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
