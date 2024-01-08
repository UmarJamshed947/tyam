import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/View/invitation/invite_friend.dart';

import '../../Widgets/auth_text_field.dart';

class ProfileSetup extends StatefulWidget {

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profilebtnController =
  RoundedLoadingButtonController();

  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          height: 150,
          width: 150,
          child: Image.asset("assets/images/logo.png",
              filterQuality: FilterQuality.high),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg",
            ),
            filterQuality: FilterQuality.high
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff000221),
              ),
              child: Text(
                "Profile Setup",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(height: 60),
            CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              initialsText: Text(
                "+",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                  keyboardType: TextInputType.text,
                  labelText: "Your Name",
                  obscureText: false,
                  icon: Icons.face,
                  size: 16),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                  keyboardType: TextInputType.text,
                  labelText: "Your Username",
                  obscureText: false,
                  icon: Icons.alternate_email,
                  size: 16),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: isMale ? Colors.cyan : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 9.0),
                            blurRadius: 30,
                          ),
                        ]),
                    child: Icon(Icons.male,color: Colors.white,),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: !isMale ? Colors.purple : Colors.grey,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 9.0),
                            blurRadius: 30,
                          ),
                        ]),
                    child: Icon(Icons.female,color: Colors.white),
                  ),
                ),

              ],
            ),
            SizedBox(height: 40),
            Container(
              width: 250,
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    controller: _profilebtnController,
                    color: Color(0xff00C1AA),
                    onPressed: () {
                      Timer(Duration(seconds: 3),(){
                        _profilebtnController.success();
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: InviteFriend()));
                      });
                    },
                    child: Text(
                      "Next",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
