import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading(
      {required this.mainText,
      required this.subText,
      required this.logo,
      required this.fontSize,
      required this.logoSize});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Text(
              mainText,
                  style: GoogleFonts.poppins(
                      fontSize: fontSize,
                      color: Color(0xFF00205C),
                      fontWeight: FontWeight.bold)),
              Container(
                  height: logoSize,
                  width: logoSize,
                  child: Image.asset(
                    "assets/images/symbol.png",
                    filterQuality: FilterQuality.high,
                  )),
            ],
          ),
          Text(
            subText,
            style: GoogleFonts.poppins(
                fontSize: fontSize,
                color: Color(0xFF00205C),
                fontWeight: FontWeight.bold),
          ),
        ]);
  }
}
