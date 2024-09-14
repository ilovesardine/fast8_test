import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1Text extends StatelessWidget {
  const H1Text({
    super.key,
    required this.text,
    this.brightness = Brightness.light,
  });

  final String text;
  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: brightness == Brightness.light ? Colors.black12 : Colors.white,
      ),
    );
  }
}
