import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class constants {
  static int thememode = 1;
  Color orange = Color.fromRGBO(253, 131, 48, 1);
  Color blue = Color.fromRGBO(24, 126, 158, 1);
  Color bluelight = Color.fromRGBO(18, 178, 229, 1);

  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Color.fromRGBO(24, 126, 158, 1),
  );
  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Color.fromRGBO(24, 126, 158, 1),
  );
}
