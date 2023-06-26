import 'package:flutter/material.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import '../widgets/my_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.of(context).pushReplacementNamed('/MyBottomNavigationBar'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MyText('Elegant',
            color: MyColors.onPrimaryColor,
            fontSize: dp25(context) * 3,
            bold: true,
            fontFamily: 'Pacifico-Regular'),
      ),
    );
  }
}
