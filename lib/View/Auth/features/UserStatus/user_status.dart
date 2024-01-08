import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/View/Auth/features/deviceinfo/one_value_card.dart';

import '../deviceinfo/two_value_card.dart';

class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    "AWAy",
    "DO NOT DISTURB",
    "DRIVING",
    "EATING",
  ];

  List<String> status2 = ["MEETING", "OUTDOORS", "SLEEPING", "WORKING"];

  String selectedStatus = "AWAY";

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
            gradient:
                LinearGradient(colors: [Color(0xFF86AAE8), Color(0xFF92E9E3)])),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Friend`s Status:",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                  child: TwoValueCard(
                                    text: "User Is",
                                    value: "Online",
                                    txtclr: Color(0xff23A8E1),
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  child: TwoValueCard(
                                    text: "Last App Action",
                                    value: "2 mins ago",
                                    txtclr: Color(0xff23A8E1),
                                  ),
                                )),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: TwoValueCard(
                                text: "User Status",
                                value: "Driving",
                                txtclr: Color(0xff23A8E1),
                              ),
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
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "My Status:",
                              style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff989898)),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Eating",
                              style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff23A8E1)),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                        child: ListView.builder(
                            itemCount: status.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SingleChildScrollView(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedStatus = status[index];
                                        });
                                      },
                                      child: OneValueCard(
                                        value: status[index],
                                        clr: selectedStatus == status[index]
                                            ? Colors.blue
                                            : Color(0xFF84abe4),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedStatus = status2[index];
                                          });
                                        },
                                        child: OneValueCard(
                                            value: status2[index],
                                            clr: selectedStatus == status2[index]
                                                ? Colors.blue
                                                : Color(0xFF84abe4))),
                                  ],
                                ),
                              );
                            }))
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
