import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            "MY PROFILE",
            style: GoogleFonts.nunito(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 40),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.fill),
            ),
            child: CircularProfileAvatar(
              "",
              backgroundColor: Colors.cyan,
              borderWidth: 1,
              borderColor: Colors.deepPurpleAccent,
              elevation: 20,
              radius: 80,
              cacheImage: true,
              errorWidget: (context, url, error) {
                return Icon(Icons.face, size: 50);
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
          ),
          SizedBox(height: 20),
          Text(
            "Umar Jamsed",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            "@omar947",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Color(0xff671afc))),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Edit Profile Details",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff671afc),
                  ),
                ),
              )),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CardDetailRow(
                    type: "Email",
                    icon: Icon(Icons.alternate_email),
                    val: "omar.jamshaid@gmail.com",
                    clr: Colors.grey.shade200),
                CardDetailRow(
                    type: "Country",
                    icon: Icon(Icons.alternate_email),
                    val: "Pakistan",
                    clr: Colors.transparent),
                CardDetailRow(
                    type: "Phone Number",
                    icon: Icon(Icons.phone),
                    val: "Not Currently Set",
                    clr: Colors.grey.shade200),
                more
                    ? CardDetailRow(
                        clr: Colors.transparent,
                        type: "Gender",
                        val: "Male",
                        icon: Icon(FontAwesomeIcons.venusMars),
                      )
                    : Container(),
                more
                    ? CardDetailRow(
                        type: "Partner",
                        icon: Icon(Icons.person_2_outlined),
                        val: "Robbie Williams",
                        clr: Colors.grey.shade200)
                    : Container(),
                more
                    ? CardDetailRow(
                        type: "UID",
                        icon: Icon(Icons.fingerprint),
                        val: "aosdioihgiohaijgaj",
                        clr: Colors.transparent)
                    : Container(),
                more
                    ? CardDetailRow(
                        type: "Account Created",
                        icon: Icon(Icons.person_2_outlined),
                        val: "24-10-2022",
                        clr: Colors.grey.shade200)
                    : Container(),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Colors.grey)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade200),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
              ),
              onPressed: () {
                setState(() {
                  more = !more;
                });
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  more ? " - Show Less" : "+ Show More",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              )),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffff9966), Color(0xffff5e62)]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed on",
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "N/A",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardDetailRow extends StatelessWidget {
  final String type;
  final Icon icon;
  final String val;
  final Color clr;

  CardDetailRow(
      {required this.type,
      required this.icon,
      required this.val,
      required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            icon,
            SizedBox(width: 10),
            Text(type,
                textScaleFactor: 1,
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito()),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    val,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: val == "Not Currently Set"
                            ? Colors.red
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
