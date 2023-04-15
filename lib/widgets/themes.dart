import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get headingTextStyle {
  return GoogleFonts.nunito(
    textStyle: const TextStyle(
      fontSize: 20
    )
  );
}

TextStyle get typingTextStyle{
  return GoogleFonts.nunito(
    textStyle: const TextStyle(
      fontSize: 16,
      fontStyle: FontStyle.italic,
      color: Color(0xFFFF5F8F)
    )
  );
}

TextStyle get readTextStyle {
  return GoogleFonts.nunito(
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color(0xFF818181),
      )
  );
}

TextStyle get unreadTextStyle {
  return GoogleFonts.nunito(
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color(0xFF050505),
      )
  );
}

TextStyle get subUnreadTextStyle {
  return GoogleFonts.nunito(
      textStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xFF050505),
      )
  );
}

TextStyle get subReadTextStyle {
  return GoogleFonts.nunito(
      textStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xFF818181),
      )
  );
}