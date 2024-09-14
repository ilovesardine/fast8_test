import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalText extends StatelessWidget {
  const NormalText({
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
        fontSize: 14,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: brightness == Brightness.light ? Colors.black12 : Colors.white,
      ),
    );
  }
}
