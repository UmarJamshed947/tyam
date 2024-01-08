import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/View/Auth/features/generalinfo/two_widget_info.dart';
import 'package:tyamo/View/Auth/features/generalinfo/two_widget_info.dart';


import '../BatteryInfo/two_value_card.dart';

class GeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "assets/images/logo.png",
          ))),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF50C9C2), Color(0xFF95DEDA)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("General Info:",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                //color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        //color: Colors.green,
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                text: "Screen State",
                                value: "UNLOCKED",
                                txtclr: Color(0xff55CAC4),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                text1: "Syetem Volume",
                                value1: "0 / 7",
                                txtclr1: Color(0xff55CAC4),
                                text2: "Media Volume",
                                value2: "4 / 7",
                                txtclr2: Color(0xff55CAC4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                text1: "Light Activity",
                                value1: "Dim Light",
                                txtclr1: Color(0xff55CAC4),
                                text2: "Light Intensity",
                                value2: "4",
                                txtclr2: Color(0xff55CAC4),
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Brightness",
                                value: "5.88",
                                txtclr: Color(0xff55CAC4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Last Updated: 1 min ago",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("My General Info:",
                            style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black45,
                            ),
                            textAlign: TextAlign.left),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        //color: Colors.red,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                //color: Colors.green,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Screen State",
                                        value: "ON",
                                        clr: Color(0xFF50C9C2),
                                        txtclr: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: TwoWidgetCard(
                                        text1: "System Volume",
                                        value1: "5 / 15",
                                        txtclr1: Colors.white,
                                        text2: "Media Volume",
                                        value2: "7 / 15",
                                        txtclr2: Colors.white,
                                        clr1: Color(0xFF50C9C2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: TwoWidgetCard(
                                        text1: "Light Activity",
                                        value1: "No Light",
                                        txtclr1: Colors.white,
                                        text2: "Light Intensity",
                                        value2: "0",
                                        txtclr2: Colors.white,
                                        clr1: Color(0xFF50C9C2),
                                      ),
                                    ),
                                    Expanded(
                                      child: TwoValueCard(
                                        text: "Brightness",
                                        value: "27.84 %",
                                        clr: Color(0xFF50C9C2),
                                        txtclr: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
