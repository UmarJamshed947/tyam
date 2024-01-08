import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Widgets/auth_heading.dart';

import '../../Widgets/auth_text_field.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgotpasswordbtnController =
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
          centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(height: 60),
              AuthHeading(
                  mainText: "Forgot your Password",
                  subText: "",
                  logo: "assets/images/symbol.png",
                  fontSize: 16.sp,
                  logoSize: 20.sp),
              Container(
                height: 20.h,
                width: 40.w,
                child: Image.asset("assets/images/lock.png",
                filterQuality: FilterQuality.high),
              ),
              SizedBox(height: 40),
          Text(
            "To request for a new one, type your email address below.A link to reset the password will be sent to that email",
            style: GoogleFonts.poppins(),
            textAlign: TextAlign.center,
            ),
              SizedBox(height: 40),

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
                    controller: _forgotpasswordbtnController,
                    color: Color(0xff00C1AA),
                    onPressed: () {
                      print("the button was pressed");
                    },
                    child: Text(
                      "Send",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
