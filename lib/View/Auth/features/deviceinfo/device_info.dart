import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/View/Auth/features/deviceinfo/gradient_button.dart';
import 'package:tyamo/View/Auth/features/deviceinfo/top_banner.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
      body: Column(
        children: [
          TopBanner(
              title: "Device Info",
              clr: [Color(0xff4fc174), Color(0xff00d7a9)]),
          SizedBox(height: 20),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                      flex: 10,
                      child: GradientButtonContainer(
                        title: "User Status",
                        overlayColor: Colors.cyan,
                        isGradientvertical: true,
                        clr: [Color(0xff86aae8), Color(0xff92e9e3)],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: GradientButtonContainer(
                        title: "Battery",
                        overlayColor: Colors.orangeAccent,
                        isGradientvertical: false,
                        clr: [Color(0xfffad585), Color(0xfff47a7d)],
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: GradientButtonContainer(
                  title: "General",
                  overlayColor: Colors.teal.shade300,
                  isGradientvertical: true,
                  clr: [Color(0xfffad585), Color(0xfff47a7d)],
                )),
              ],
            ),
          )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: GradientButtonContainer(
                    title: "Device Specs",
                    overlayColor: Color(0xffb1159c6),
                    isGradientvertical: true,
                    clr: [Color(0xff02a9af), Color(0xff00cdac)],
                  ),
                      )),
                  Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6,
                            child: GradientButtonContainer(
                              title: "Location",
                              overlayColor: Color(0xffB159C6),
                              isGradientvertical: false,
                              clr: [Color(0xFFB893D6), Color(0xFF8CA5DB)],
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: GradientButtonContainer(
                              title: "Orientation",
                              overlayColor: Color(0xffF98583),
                              isGradientvertical: true,
                              clr: [Color(0xFFF2709B), Color(0xFFFF9370)],
                            ),
                          ),
                        ],
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
