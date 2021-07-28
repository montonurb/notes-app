import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  TextStyle get title;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.inter(fontSize: 28);
}
