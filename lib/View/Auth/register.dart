import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../Widgets/auth_heading.dart';
import '../../Widgets/auth_text_field.dart';
import 'loging.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
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
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            AuthHeading(
              mainText: "SignUp to Tyamo",
              subText: "Get connected with \nyour partner",
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
            SizedBox(height: 20),
            AuthTextField(
                keyboardType: TextInputType.text,
                labelText: "Confirm Password",
                obscureText: true,
                icon: Icons.lock_reset,
                size: 14.sp),
            SizedBox(height: 30),
            Hero(
              tag: "Auth",
              child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  controller: _registerbtnController,
                  color: Color(0xff00C1AA),
                  onPressed: () {
                    print("the button was pressed");
                  },
                  child: Text(
                    "Register",
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
              alignment: Alignment.centerLeft,
              child: Text(
                "By registering, you agree to our terms and conditions",
                style: GoogleFonts.poppins(
                  color: Color(0xff808080),
                  fontWeight: FontWeight.w500,
                  fontSize: 11.sp,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Registered Signin?",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5A5B5B),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: Login()));
                  },
                  child: Text(
                    "SignIn",
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
    );
  }
}
