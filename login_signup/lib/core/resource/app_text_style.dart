import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/core/constant/app_colors.dart';

class AppTextStyle {
  static TextStyle base({
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.mainColor,
  }) {
    return GoogleFonts.ptMono(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle heading = base(fontSize: 32, fontWeight: FontWeight.w700);
  static TextStyle subHeading = base(fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle textButton = base(fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle textButtonFotter = base(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle buttom = base(fontSize: 16, fontWeight: FontWeight.w700);
}
