import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrSettingHeading extends StatelessWidget {
  final String headingText;

  PrSettingHeading({required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        headingText,
        textScaleFactor: 1,

        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w900,
          fontSize: 16,
          color: Color(0xff671afc),
        ),
      ),

    );
  }
}
