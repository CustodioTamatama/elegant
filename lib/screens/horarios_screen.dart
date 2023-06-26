import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import '../styles/my_colors.dart';
import '../styles/responsive.dart';
import '../widgets/horarios_list_view.dart';
import '../widgets/my_back_button.dart';
import '../widgets/my_text.dart';

class HorariosScreen extends StatefulWidget {
  const HorariosScreen({super.key});

  @override
  State<HorariosScreen> createState() => _HorariosScreenState();
}

class _HorariosScreenState extends State<HorariosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  width: larguraTela(context),
                  height: larguraTela(context) / 1.3,
                  color: MyColors.primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: MyBackButton(),
                      ),
                      Center(
                        child: MyText(
                          'Selecione o horário',
                          color: Colors.white,
                          fontSize: dp20(context) * 2,
                          bold: true,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CalendarTimeline(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2050, 12, 31),
                        onDateSelected: (date) => (date),
                        leftMargin: 20,
                        monthColor: Colors.white70,
                        dayColor: Colors.white,
                        activeDayColor: MyColors.primaryColor,
                        activeBackgroundDayColor: Colors.white,
                        dotsColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: larguraTela(context) / 1.4,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: larguraTela(context),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: const HorariosListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
