import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/View/Auth/forgot_passowrd.dart';
import 'package:tyamo/View/Auth/register.dart';
import 'package:tyamo/View/profile/profile_setup.dart';
import 'package:tyamo/Widgets/auth_text_field.dart';
import '../../Widgets/auth_heading.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyamo",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Sign in to Tyamo",
                subText: "To connect with \nyour partner",
                logo: "assets/images/symbol.png",
                logoSize: 20.sp,
                fontSize: 16.sp,
              ),
              SizedBox(height: 50),
              AuthTextField(
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Email",
                  obscureText: false,
                  icon: Icons.alternate_email,
                  size: 14.sp),
              SizedBox(height: 20),
              AuthTextField(
                  keyboardType: TextInputType.text,
                  labelText: "Password",
                  obscureText: true,
                  icon: Icons.password,
                  size: 14.sp),
              SizedBox(height: 30),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                    width: 2000,
                    borderRadius: 10,
                    controller: _loginbtnController,
                    color: Color(0xff00C1AA),
                    onPressed: () {
                      Timer(Duration(seconds: 3),(){
                        _loginbtnController.success();
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ProfileSetup()));
                      });
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Passowrd?",
                    style: GoogleFonts.poppins(
                      color: Color(0xFFC1272D),
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A5B5B),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: Register()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        color: Color(0xFF2F76EA),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
