import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButtonContainer extends StatelessWidget {
  final String title;
  final List<Color> clr;
  final Color overlayColor;
  final bool isGradientvertical;

  GradientButtonContainer(
      {required this.title,
      required this.clr,
      required this.overlayColor,
      required this.isGradientvertical});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: isGradientvertical
                        ? Alignment.topCenter
                        : Alignment.centerLeft,
                    end: isGradientvertical
                        ? Alignment.bottomCenter
                        : Alignment.centerRight,
                    colors: clr),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                overlayColor: MaterialStateProperty.all<Color>(overlayColor),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.all(0)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
