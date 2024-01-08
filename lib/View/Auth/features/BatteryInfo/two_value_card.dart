import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subWidget;
  final Color? clr;
  final Color? txtclr;

  TwoValueCard(
      {required this.text, required this.value, this.subWidget, this.clr, this.txtclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            subWidget ??
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      color: txtclr ?? Color(0xFFF57D7C),
                      fontSize: 16),
                ),
          ],
        ),
      ),
    );
  }
}
