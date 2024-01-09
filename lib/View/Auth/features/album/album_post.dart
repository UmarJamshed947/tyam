import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as prefix0;

import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class AlbumPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    child: Container(
                      width: double.infinity,
                      height: 460,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/friend.jpg"),
                              fit: BoxFit.cover
                          ),
                      ),
                      child: BackdropFilter(
                        filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                        child: Container(
                          color: Colors.black.withOpacity(0.1),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Icon(Icons.arrow_back,
                                          color: Colors.orange),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.asset("assets/images/logo.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: GFAvatar(
                                      backgroundColor: Colors.blue,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png"),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Container(
                                  width: 250,
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.favorite, color: Colors.red),
                                      SizedBox(height: 15),
                                      BalloonSlider(
                                        value: 0,
                                        showRope: false,
                                        onChangeStart: (value) {},
                                        onChangeEnd: (value) {},
                                        onChanged: (value) {},
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Caption:",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: Colors.cyan,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                      context: context,
                                      animType: AnimType.SCALE,
                                      dialogType: DialogType.NO_HEADER,
                                      title: "Edit Caption",
                                      body: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                          child: TextField(
                                            controller: null,
                                            decoration: InputDecoration(
                                              labelText: "Enter New Caption",
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Nunito"),
                                              fillColor: Colors.black,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                  color: Color(0xff671AFC),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                    color: Color(0xff671AFC)),
                                              ),
                                            ),
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                            minLines: 1,
                                          ),
                                        ),
                                      ),
                                      dismissOnBackKeyPress: true,
                                      isDense: false,
                                      btnOkText: "Confirm Caption",
                                      btnOkOnPress: () {})
                                      .show();
                                },
                                child: Icon(Icons.edit, color: Colors.cyan)),
                          ],
                        ),
                        FocusedMenuHolder(
                          onPressed: () {},
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 2.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          duration: Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10,
                          bottomOffsetHeight: 80,
                          menuItems: [
                            FocusedMenuItem(
                                trailingIcon: Icon(FontAwesomeIcons.copy),
                                title: Text(
                                  "Copy",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(color: Colors.black),
                                ),
                                onPressed: () async {}),
                            FocusedMenuItem(
                                backgroundColor: Colors.red,
                                trailingIcon: Icon(
                                  FontAwesomeIcons.penToSquare,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  "Edit",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(color: Colors.white),
                                ),
                                onPressed: () {
                                  AwesomeDialog(
                                      context: context,
                                      animType: AnimType.SCALE,
                                      dialogType: DialogType.NO_HEADER,
                                      title: "Edit Caption",
                                      body: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 20),
                                          child: TextField(
                                            controller: null,
                                            decoration: InputDecoration(
                                              labelText: "Enter New Caption",
                                              labelStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Nunito"),
                                              fillColor: Colors.black,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                  color: Color(0xff671AFC),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                    color: Color(0xff671AFC)),
                                              ),
                                            ),
                                            keyboardType: TextInputType.multiline,
                                            maxLines: null,
                                            minLines: 1,
                                          ),
                                        ),
                                      ),
                                      dismissOnBackKeyPress: true,
                                      isDense: false,
                                      btnOkText: "Confirm Caption",
                                      btnOkOnPress: () {})
                                      .show();
                                }),
                          ],
                          child: ExpandableText(
                            "We'll place the caption here",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400, color: Colors.black),
                            expandText: 'show more',
                            collapseText: 'show less',
                            maxLines: 2,
                            linkColor: Colors.orange,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Comments",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.purple,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return FocusedMenuHolder(
                              onPressed: () {},
                              menuWidth: MediaQuery.of(context).size.width * 0.50,
                              blurSize: 2.0,
                              menuItemExtent: 45,
                              menuBoxDecoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              duration: Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset: 10,
                              bottomOffsetHeight: 80,
                              menuItems: [
                                FocusedMenuItem(
                                    trailingIcon: Icon(FontAwesomeIcons.copy),
                                    title: Text(
                                      "Copy",
                                      textScaleFactor: 1,
                                      style: GoogleFonts.nunito(color: Colors.black),
                                    ),
                                    onPressed: () async {}),
                                FocusedMenuItem(
                                    backgroundColor: Colors.red,
                                    trailingIcon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      "Delete",
                                      textScaleFactor: 1,
                                      style: GoogleFonts.nunito(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      AwesomeDialog(
                                          context: context,
                                          animType: AnimType.SCALE,
                                          dialogType: DialogType.NO_HEADER,
                                          title: "Edit Caption",
                                          body: Center(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 20),
                                              child: TextField(
                                                controller: null,
                                                decoration: InputDecoration(
                                                  labelText: "Enter New Caption",
                                                  labelStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: "Nunito"),
                                                  fillColor: Colors.black,
                                                  enabledBorder:
                                                  OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30),
                                                    borderSide: BorderSide(
                                                      color: Color(0xff671AFC),
                                                    ),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30),
                                                    borderSide: BorderSide(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                  OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30),
                                                    borderSide: BorderSide(
                                                        color: Color(0xff671AFC)),
                                                  ),
                                                ),
                                                keyboardType:
                                                TextInputType.multiline,
                                                maxLines: null,
                                                minLines: 1,
                                              ),
                                            ),
                                          ),
                                          dismissOnBackKeyPress: true,
                                          isDense: false,
                                          btnOkText: "Confirm Caption",
                                          btnOkOnPress: () {})
                                          .show();
                                    }),
                              ],
                              child: ListTileMoreCustomizable(
                                title: Text(
                                  "@Umar",
                                  textScaleFactor: 1,
                                  style: GoogleFonts.nunito(
                                      fontSize: 16, color: Colors.cyan),
                                ),
                                leading: GFAvatar(
                                  backgroundColor: Colors.blue,
                                  size: 25,
                                ),
                                horizontalTitleGap: 0.0,
                                minVerticalPadding: 10,
                                minLeadingWidth: 60,
                                contentPadding: EdgeInsets.all(0),
                                isThreeLine: false,
                                subtitle: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "This is my Comment",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16, fontWeight: FontWeight.w400),
                                  ),
                                ),
                                trailing: Text(
                                  "1 min ago",
                                  style: GoogleFonts.nunito(
                                      fontSize: 12, fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 60),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: null,
                        focusNode: null,
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.sentences,
                        maxLines: 3,
                        minLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            hintText: "Start a conversation",
                            hintStyle: TextStyle(
                                color: Colors.white, fontFamily: "Nunito"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(60),
                                ),
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.all(20),
                            filled: true,
                            fillColor: Colors.orange),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.black)
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
