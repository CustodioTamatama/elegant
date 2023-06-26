import 'package:flutter/material.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import '../widgets/card_agendamento.dart';
import '../widgets/my_text.dart';

class AgendamentosScreen extends StatelessWidget {
  const AgendamentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: MyColors.primaryColor,
        title: MyText(
          'Agendamentos',
          color: Colors.white,
          fontSize: dp25(context),
          bold: true,
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: dp20(context), right: dp20(context)),
          children: [
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
            SizedBox(height: dp20(context)),
            const CardAgendamento(),
          ],
        ),
      ),
    );
  }
}
