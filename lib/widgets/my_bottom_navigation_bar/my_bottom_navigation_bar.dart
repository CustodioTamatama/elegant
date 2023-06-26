import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../screens/agendamentos_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/user/user_screen.dart';
import '../../screens/notificacoes_screen.dart';
import '../../styles/my_colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int myIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const AgendamentosScreen(),
    const UserScreen(),
    const NotificacoesScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: MyColors.primaryColor,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          onTap: (index) {
            if (index == 2) {
              Navigator.of(context).pushReplacementNamed('/LoginScreen');
            } else {
              setState(() {
                myIndex = index;
              });
            }
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.activity),
              label: "Especialistas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.calendar_1),
              label: "Agendamento",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              label: "Usuário",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.message),
              label: "Chat",
            )
          ]),
    );
  }
}
