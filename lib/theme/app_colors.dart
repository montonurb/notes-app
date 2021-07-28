import 'package:flutter/cupertino.dart';

abstract class AppColors {
  Color get color1;
}

class AppColorsDefault implements AppColors {
  @override
  Color get color1 => Color(0xFF40B38C);
}
