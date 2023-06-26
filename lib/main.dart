import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

import 'screens/agendamentos_screen.dart';
import 'screens/localizacao_screen.dart';
import 'screens/login _register/login_screen.dart';
import 'screens/pago_screen.dart';
import 'screens/mensagens_screen.dart';
import 'screens/pagamento_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/user/servicos_prestados.dart';
import 'screens/user/user_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/horarios_screen.dart';
import 'screens/notificacoes_screen.dart';
import 'screens/login _register/register_screen.dart';
import 'screens/ver_mais/servicos_screen.dart';
import 'screens/ver_mais/ver_mais_screen.dart';
import 'widgets/my_bottom_navigation_bar/my_bottom_navigation_bar.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (_) => const SplashScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/HorariosScreen': (context) => const HorariosScreen(),
        '/MensagensScreen': (context) => const MensagensScreen(),
        '/NotificacoesScreen': (context) => const NotificacoesScreen(),
        '/VerMaisScreen': (context) => const VerMaisScreen(),
        '/ServicosScreen': (context) => const ServicosScreen(),
        '/ServicosPrestadosScreen': (context) =>
            const ServicosPrestadosScreen(),
        '/PagamentoScreen': (context) => const PagamentoScreen(),
        '/PagoScreen': (context) => const PagoScreen(),
        '/UserScreen': (context) => const UserScreen(),
        '/AgendamentosScreen': (context) => const AgendamentosScreen(),
        '/LocalizacaoScreen': (context) => LocalizacaoScreen(),
        '/MyBottomNavigationBar': (context) => const MyBottomNavigationBar(),
      },
    );
  }
}
