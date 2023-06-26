import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../styles/responsive.dart';
import 'my_text.dart';
import 'servicos_elevated_buttom.dart';

Row biuldCalendarioHora(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ServicosElevatedButton(
        onPressed: () async {
          return showDialog(
              context: context,
              builder: (context) {
                return DatePickerDialog(
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2023, 12, 31));
              });
        },
        child: Row(
          children: [
            MyText(
              '24/02/2023',
              color: Colors.white,
              fontSize: dp16(context),
            ),
            const SizedBox(width: 5),
            Icon(Icons.calendar_month_outlined,
                color: Colors.white, size: dp20(context))
          ],
        ),
      ),
      ServicosElevatedButton(
        onPressed: () async {
          return showDialog(
              context: context,
              builder: (context) {
                return TimePickerDialog(
                  initialTime: TimeOfDay.now(),
                );
              });
        },
        child: Row(
          children: [
            MyText(
              '07:01 AM',
              color: Colors.white,
              fontSize: dp16(context),
            ),
            const SizedBox(width: 5),
            Icon(Iconsax.clock, size: dp20(context))
          ],
        ),
      ),
    ],
  );
}
