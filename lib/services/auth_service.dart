import 'package:elegant/enums.dart/e_role.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/usuario_model.dart';

class AuthService {
  Future<UsuarioModel?> register(UsuarioModel usuario) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usuario.email!,
        password: usuario.senha!,
      );

      return await usuario.post();
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<UsuarioModel?> login(UsuarioModel usuario) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usuario.email!,
        password: usuario.senha!,
      );

      return await usuario.get();
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// The scopes required by this application.
  final List<String> _scopes = <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ];

  Future<UsuarioModel?> googleAuth() async {
    try {
      final instance = GoogleSignIn(scopes: _scopes);

      final result = await instance.signIn();

      if (result != null) {
        final names = result.displayName!.split(' ');

        final usuario = UsuarioModel(
          email: result.email,
          nome: names[0],
          apelido: names.last,
          role: ERole.cliente,
        );

        final usuarioDb = await usuario.get();

        if (usuarioDb != null) {
          return usuarioDb;
        } else {
          return await usuario.post();
        }
      }

      return null;
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
