import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/View/Auth/features/BatteryInfo/two_value_card.dart';

class DeviceSpecs extends StatelessWidget {
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
            colors: [Color(0xFF02A9AF), Color(0xFF00CDAC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Information:",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: 'Total Ram',
                              value: '5.37 GB',
                            )),
                        Expanded(
                          flex: 2,
                          child: TwoValueCard(
                              text: 'Refresh rate', value: '60 Hz'),
                        ),
                        Expanded(
                            flex: 3,
                            child: TwoValueCard(
                                text: 'Fingerprint Sensor', value: 'Present')),
                        Expanded(
                            flex: 3,
                            child: TwoValueCard(
                                text: 'Fingerprint Sensor', value: 'Yes')),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: TwoValueCard(
                                text: 'Internal Memory', value: '59.36/110.05 GB')),
                        Expanded(
                            flex: 3,
                            child: TwoValueCard(
                                text: 'External Memory', value: 'N/A')),
                        Expanded(
                            flex: 2,
                            child: TwoValueCard(
                              text: 'Screen Size',
                              value: '6.06 inches',
                            )),
                        Expanded(
                          flex: 2,
                          child: TwoValueCard(
                              text: 'Resolution', value: '20134*1080'),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
