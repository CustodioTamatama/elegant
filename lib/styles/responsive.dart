// Tela
import 'package:flutter/material.dart';

double alturaTela(BuildContext context) => MediaQuery.of(context).size.height;

double larguraTela(BuildContext context) => MediaQuery.of(context).size.width;

double alturaStatusBar(BuildContext context) =>
    MediaQuery.of(context).padding.top;

double viewBottomInsets(BuildContext context) =>
    MediaQuery.of(context).viewInsets.bottom;

final alturaAppBar = AppBar().preferredSize.height;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 &&
    MediaQuery.of(context).size.width >= 750;

double kRespValue(BuildContext context, double value, double multiplier) =>
    isTablet(context) ? (value * multiplier) : value;

Orientation _orientation(BuildContext context) =>
    MediaQuery.of(context).orientation;

// Buttons
double xSBtn(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 12
        : alturaTela(context) / 12;

double sBtn(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 10
        : alturaTela(context) / 10;

double btn(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 8
        : alturaTela(context) / 8;

double lBtn(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 7
        : alturaTela(context) / 7;

double xLBtn(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 5
        : alturaTela(context) / 5;

double stomBtn(BuildContext context, double per) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / per
        : alturaTela(context) / per;

/// `SIZES`
double dp4(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 100
        : alturaTela(context) / 100;

double dp5(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 83
        : alturaTela(context) / 83;

double dp6(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 68
        : alturaTela(context) / 68;

double dp7(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 60
        : alturaTela(context) / 60;

double dp8(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 51
        : alturaTela(context) / 51;

double dp9(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 46
        : alturaTela(context) / 46;

double dp10(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 41
        : alturaTela(context) / 41;

double dp11(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 38
        : alturaTela(context) / 38;

double dp12(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 35
        : alturaTela(context) / 35;

double dp13(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 32
        : alturaTela(context) / 32;

double dp14(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 30
        : alturaTela(context) / 30;

double dp15(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 27.5
        : alturaTela(context) / 27.5;

double dp16(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 26
        : alturaTela(context) / 26;

double dp17(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 24.5
        : alturaTela(context) / 24.5;

double dp18(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 23
        : alturaTela(context) / 23;

double dp19(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 22
        : alturaTela(context) / 22;

double dp20(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 21
        : alturaTela(context) / 21;

double dp21(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 20
        : alturaTela(context) / 20;

double dp22(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 19
        : alturaTela(context) / 19;

double dp23(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 18
        : alturaTela(context) / 18;

double dp24(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 17
        : alturaTela(context) / 17;

double dp25(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 16.5
        : alturaTela(context) / 16.5;

double dp26(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 16
        : alturaTela(context) / 16;

double dp27(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 15.3
        : alturaTela(context) / 15.3;

double dp28(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 14.8
        : alturaTela(context) / 14.8;

double dp29(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 14.3
        : alturaTela(context) / 14.3;

double dp30(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 13.8
        : alturaTela(context) / 13.8;

double dp34(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 10
        : alturaTela(context) / 11;

double dp38(BuildContext context) =>
    _orientation(context) == Orientation.portrait
        ? larguraTela(context) / 10
        : alturaTela(context) / 10;
