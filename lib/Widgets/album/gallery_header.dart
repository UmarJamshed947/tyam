import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GalleryHead extends StatelessWidget {
  final BuildContext context;
  final String tuVal;
  final String toVal;
  final bool isEditable;
  final String name;
  final String description;

  GalleryHead(
      {required this.context,
        required this.tuVal,
        required this.toVal,
        required this.isEditable,
        required this.name,
        required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Color(0xfffafad2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffF7DB00), Color(0xffF7A100)],
                stops: [0.0, 0.5],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: Color(0xffFafad2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Gallery",
                  style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                CircularProfileAvatar(
                  "",
                  backgroundColor: Colors.cyan,
                  borderWidth: 1,
                  borderColor: Colors.deepPurpleAccent,
                  elevation: 20,
                  radius: 40,
                  cacheImage: true,
                  errorWidget: (context, url, error) {
                    return Icon(Icons.face, size: 20);
                  },
                  onTap: () {},
                  animateFromOldImageOnUrlChange: true,
                  placeHolder: (context, url) {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
                Text(
                  name,
                  style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                Text(
                  description,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Uploads",
                        textScaleFactor: 1,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      Text(
                        tuVal,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            color: Colors.deepOrangeAccent,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                isEditable
                    ? GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xff633494), Color(0xff5656AC)],
                      ),
                    ),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                  onTap: () {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.SCALE,
                      dialogType: DialogType.NO_HEADER,
                      body: Center(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Enter Album Description",
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Nunito"),
                              fillColor: Colors.black,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                BorderSide(color: Colors.deepPurple),
                              ),
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            minLines: 2,
                          ),
                        ),
                      ),
                      btnOkOnPress: () {},
                    ).show();
                  },
                )
                    : Container(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Times Opened",
                        textScaleFactor: 1,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      Text(
                        toVal,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            color: Colors.deepOrangeAccent,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}