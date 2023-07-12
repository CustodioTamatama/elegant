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

      final result = await usuario.post();
      result?.setUsuarioLogado();

      return result;
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

      final result = await usuario.get();
      result?.setUsuarioLogado();

      return result;
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
          nome: names.first,
          apelido: names.last,
          role: ERole.cliente,
        );

        final usuarioDb = await usuario.get();

        if (usuarioDb != null) {
          usuarioDb.setUsuarioLogado();

          return usuarioDb;
        } else {
          final result = await usuario.post();
          result?.setUsuarioLogado();

          return result;
        }
      }

      return null;
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> logout() async {
    try {
      final instance = GoogleSignIn(scopes: _scopes);
      final googleResult = await instance.signOut();
      await FirebaseAuth.instance.signOut();

      if (googleResult != null) await instance.disconnect();

      return true;
    } catch (e) {
      return false;
    }
  }
}
