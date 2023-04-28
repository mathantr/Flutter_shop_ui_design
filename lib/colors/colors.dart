import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color _colorHexcode(String hexcColor) {
  final hexCode = hexcColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

Color liteWhite = _colorHexcode('E9EBEA');
Color buttonBlack = _colorHexcode('2B2D3F');
Color textHeader = _colorHexcode('000004');
Color priceColor = _colorHexcode('529883');
Color liteRed = _colorHexcode('D46286');

TextStyle fontStyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.poppins(fontSize: size, fontWeight: fw, color: color);
}
