import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color MAIN_COLOR_0 = Color.fromRGBO(189, 200, 255, 1.0);
const Color MAIN_COLOR_1 = Color.fromRGBO(189, 144, 255, 1.0);
const Color MAIN_COLOR_2 = Color.fromRGBO(143, 173, 255, 1.0);
const Color MAIN_COLOR_3 = Color.fromRGBO(255, 143, 210, 1.0);

const Color TEXT_COLOR1 = Color.fromRGBO(255, 255, 255, 1.0);
const Color TEXT_COLOR2 = Color.fromRGBO(220, 220, 220, 1.0);
const Color TEXT_COLOR3 = Color.fromRGBO(80, 80, 80, 1.0);

const double BORDER_RADIUS = 10.0;

// TextWidget Provider
class TextProvider extends StatelessWidget {
  final String textContent;
  final Color textColor;
  final double textSize;

  const TextProvider(
      {Key key,
      @required this.textContent,
      @required this.textColor,
      @required this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: GoogleFonts.montserrat(color: textColor, fontSize: textSize),
    );
  }
}
