import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../BatteryInfo/two_value_card.dart';

class BatteryInfo extends StatelessWidget {
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
                  colors: [Color(0xFFFAD585), Color(0xFFF47A7D)])),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Battery Status:",
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left),
                ),
              ),
            
              Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
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
                                text: "Status",
                                value: "Discarhge",
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Charging Type",
                                value: "--",
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
                              child: TwoValueCard(
                                text: "Charging Percentage",
                                value: "N/A",
                                subWidget: SleekCircularSlider(
                                  min: 0,
                                  max: 100,
                                  appearance: CircularSliderAppearance(
                                    customColors: CustomSliderColors(
                                      progressBarColor: Color(0xFFF57D7C),
                                    ),
                                    infoProperties: InfoProperties(
                                      mainLabelStyle: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w400),
                                    ),
                                    size: 100,
                                    customWidths: CustomSliderWidths(
                                        progressBarWidth: 10),
                                  ),
                                  initialValue: 50,
                                ),
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Temperature",
                                value: "35.0",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Expanded(
                              child: TwoValueCard(
                                text: "Battery Health",
                                value: "Good",
                              ),
                            ),
                            Expanded(
                              child: TwoValueCard(
                                text: "Battery Technology",
                                value: "Li-poly",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
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
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "My Battery Status:",
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: Colors.black45,
                              ),
                              textAlign: TextAlign.left),
                        ),
                      ),

                      Expanded(
                          child: Container(
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
                                            text: "Status",
                                            value: "Discarhge",
                                            clr: Color(0xffF57D7C),
                                            txtclr: Colors.white,
                                          ),
                                        ),
                                        Expanded(
                                          child: TwoValueCard(
                                            text: "Charging Type",
                                            value: "--",
                                            clr: Color(0xffF57D7C),
                                            txtclr: Colors.white,

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
                                          child: TwoValueCard(
                                            text: "Charging Percentage",
                                            value: "N/A",
                                            clr: Color(0xffF57D7C),
                                            txtclr: Colors.white,
                                            subWidget: SleekCircularSlider(
                                              min: 0,
                                              max: 100,
                                              appearance: CircularSliderAppearance(
                                                customColors: CustomSliderColors(
                                                  progressBarColor: Colors.white,
                                                ),
                                                infoProperties: InfoProperties(
                                                  mainLabelStyle: GoogleFonts.nunito(
                                                      fontWeight: FontWeight.w400,
                                                  color: Colors.white),
                                                ),
                                                size: 100,
                                                customWidths: CustomSliderWidths(
                                                    progressBarWidth: 10),
                                              ),
                                              initialValue: 50,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: TwoValueCard(
                                            text: "Temperature",
                                            value: "35.0",
                                            clr: Color(0xffF57D7C),
                                            txtclr: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    // color: Colors.green,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: TwoValueCard(
                                            text: "Battery Health",
                                            value: "Good",
                                            clr: Color(0xffF57D7C),
                                            txtclr: Colors.white,
                                          ),
                                        ),
                                        Expanded(
                                          child: TwoValueCard(
                                            text: "Battery Technology",
                                            value: "Li-poly",
                                            clr: Color(0xffF57D7C),
                                            txtclr: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
