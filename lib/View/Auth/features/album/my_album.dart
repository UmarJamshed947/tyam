import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

import 'package:google_fonts/google_fonts.dart';

class MyAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHead(
            context: context,
            isEditable: true,
            toVal: "0",
            tuVal: "0",
            name: "Umar's Gallery",
            description: "Tell your partner what this album means to you !",
          ),
          Container(
            child: StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                crossAxisCount: 4,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return FocusedMenuHolder(
                    menuWidth: MediaQuery.of(context).size.width * 0.50,
                    blurSize: 2.0,
                    menuItemExtent: 45,
                    menuBoxDecoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    duration: Duration(milliseconds: 100),
                    animateMenuItems: true,
                    blurBackgroundColor: Colors.black,
                    menuOffset: 10,
                    bottomOffsetHeight: 80,
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Open"),
                          trailingIcon: Icon(Icons.open_in_new),
                          onPressed: () {}),
                      FocusedMenuItem(
                          title: Text(
                            "Delete",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          trailingIcon: Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {}),
                    ],
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {},
                        child: Hero(
                          tag: "gallery",
                          child: Image.asset("assets/images/img.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isEven ? 2 : 3),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 15.0),
          )
        ],
      ),
    );
  }
}

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
