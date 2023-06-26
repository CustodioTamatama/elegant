import 'package:flutter/material.dart';

import 'elevated_button/principal_elevated_button.dart';
import 'notificacoes/filled_outline_button.dart';

class HorariosListView extends StatelessWidget {
  const HorariosListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyFilledOutlineButton(
                isFilled: true, onPressed: () {}, text: '07:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '08:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '09:00'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '10:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '11:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '12:00'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '13:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '14:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '15:00'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '16:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '17:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '18:00'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '19:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '20:00'),
            MyFilledOutlineButton(
                isFilled: false, onPressed: () {}, text: '21:00'),
          ],
        ),
        const SizedBox(height: 30),
        PrincipalElevatedButton(
            onPressed: () =>
                Navigator.of(context).pushNamed('/MyBottomNavigationBar'),
            title: 'Confirmar'),
        const SizedBox(height: 20)
      ],
    );
  }
}
