import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/View/invitation/accept_invite.dart';

import '../profile/profile_setup.dart';

class InviteFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 100,
            child: Image.asset("assets/images/logo.png",
                filterQuality: FilterQuality.high),
          ),
          leading: null,
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: AcceptInvite()));
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.person_2_outlined,
                      color: Colors.purple, size: 35)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 27.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff00D7CC),
              ),
              child: Text(
                "Find your friend",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 16.sp,
                  letterSpacing: 1,
                ),
                textScaleFactor: 1,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: TextField(
                          decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                        hintText: "Hi omar, type an exact username",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      )),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10)
                        ]),
                    child: Icon(Icons.search, color: Colors.white),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset("assets/images/empty.png"),
            ),
            Text(
                "Search for your friend on Tyamo or \ninvite your friend to Tyamo",
                style: GoogleFonts.nunito(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            SizedBox(height: 20),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Invite a friend",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp

                  ),),
                )),
          ],
        ),
      ),
    );
  }
}
