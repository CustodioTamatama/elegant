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

typedef MyWidgetRouteBuilder = Widget Function(BuildContext context);

class Routes {
  static Map<String, MyWidgetRouteBuilder> getRoutes() {
    return {
      '/SplashScreen': (_) => const SplashScreen(),
      '/LoginScreen': (_) => const LoginScreen(),
      '/RegisterScreen': (_) => const RegisterScreen(),
      '/HomeScreen': (_) => const HomeScreen(),
      '/HorariosScreen': (_) => const HorariosScreen(),
      '/MensagensScreen': (_) => const MensagensScreen(),
      '/NotificacoesScreen': (_) => const NotificacoesScreen(),
      '/VerMaisScreen': (_) => const VerMaisScreen(),
      '/ServicosScreen': (_) => const ServicosScreen(),
      '/ServicosPrestadosScreen': (_) => const ServicosPrestadosScreen(),
      '/PagamentoScreen': (_) => const PagamentoScreen(),
      '/PagoScreen': (_) => const PagoScreen(),
      '/UserScreen': (_) => const UserScreen(),
      '/AgendamentosScreen': (_) => const AgendamentosScreen(),
      '/LocalizacaoScreen': (_) => LocalizacaoScreen(),
      '/MyBottomNavigationBar': (_) => const MyBottomNavigationBar(),
    };
  }
}