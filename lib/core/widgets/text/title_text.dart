import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
    this.brightness = Brightness.light,
    this.isBold = false,
  });

  final String text;
  final Brightness brightness;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 18,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: brightness == Brightness.light ? Colors.black12 : Colors.white,
      ),
    );
  }
}
