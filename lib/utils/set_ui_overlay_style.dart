import 'package:flutter/services.dart';

import '../styles/my_colors.dart';

void setUiOverlayStyle({Color? color}) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color ?? MyColors.primaryColor
    ),
  );
}