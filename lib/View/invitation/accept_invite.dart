import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
              child: Icon(Icons.arrow_back, color: Colors.black)),
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
                color: Color(0xff8c47fb),
              ),
              child: Text(
                "See received invitations",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 16.sp,
                  letterSpacing: 1,
                ),
                textScaleFactor: 1,
              ),
            ),

            SizedBox(height: 50),
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 5, 15),
                              child: Container(
                                height: 60,
                                width: 60,
                                child: CircularProfileAvatar(
                                  "",
                                  backgroundColor: Colors.blue,
                                  radius: 35,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "@omar947",
                                    style: GoogleFonts.poppins(fontSize: 17),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 0.0),
                                  child: Text("Omar",style: GoogleFonts.poppins(color: Colors.grey),),)
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  GFButton(onPressed: (){},
                                    color: Color(0xFF00D7CC),
                                    shape: GFButtonShape.pills,
                                    child: Text("Accept"),),
                                  SizedBox(width: 10),
                                  GFButton(onPressed: (){},
                                    color: Color.fromARGB(225, 215, 0, 18),
                                    shape: GFButtonShape.pills,
                                    child: Text("Decline"),),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ),
                )),
            Container(
              height: 400,
              width: 400,
              alignment: Alignment.center,
              child: Image.asset("assets/images/invite.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "your received invitations are currently",
                  style: GoogleFonts.nunito(
                    color: Colors.cyan,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Empty",
                  style: GoogleFonts.nunito(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp
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
