import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Widgets/Homepage/Dashboard/dashboard_gradient_features.dart';

class Dashboard extends StatelessWidget {
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
        leading: Icon(Icons.menu,color: Colors.black),

        actions: [
          Container(
            width: 50,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset("assets/images/energy.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text(
                "DASHBOARD",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Friend",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                    color: Color(0xff990099),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                            child: CircularProfileAvatar(
                              "",
                              backgroundColor: Colors.cyan,
                              borderWidth: 1,
                              borderColor: Colors.deepPurpleAccent,
                              elevation: 20,
                              radius: 45,
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
                        ),
                        Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(right: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.fiber_manual_record,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Umar Jamshed",
                                        style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xff4c9cff),
                                        size: 40,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          "Bow Lane,west Freeway, Houson,Texas, United States",
                                          style: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    "Status",
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Offline",
                                    style: GoogleFonts.nunito(
                                        fontSize: 17,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 2,
                            child: Container(
                              color: Colors.deepPurple,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "User Status",
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "N/A",
                                    style: GoogleFonts.nunito(
                                        fontSize: 17,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 2,
                            child: Container(
                              color: Colors.deepPurple,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "User Status",
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),

              ),
            ),
            Row(
              children: [
                Flexible(child: DashboardGradientFeature(
                  iconImg: "assets/images/device.png",
                  btnText: "Device Info",

                  clr: [ Color(0xff4fc174),
                    Color(0xff00d7a9),],
                  weight: null,
                  iconColor: null,
                )),
                Flexible(child: DashboardGradientFeature(
                  iconImg: "assets/images/photo.png",
                  btnText: "Gallery",
                  clr: [Color(0xfff7d800),Color(0xfff7a100)],
                  weight: null,
                  iconColor: null,
                )),
                Flexible(child: DashboardGradientFeature(
                  iconImg: "assets/images/smile.png",
                  btnText: "Mood",
                  clr: [Color(0xff9a01d6),Color(0xffc701d6)],
                  weight: null,
                  iconColor: null,
                )),
              ],),
            SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Our Features",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                    color: Color(0xff004c99),
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/playlist.png",
                    btnText: "Playlist",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.purple,
                  )),
                  SizedBox(width: 20),
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/location.png",
                    btnText: "Location",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.blue,
                  )),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/todo.png",
                    btnText: "To-do-List",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.amber,
                  )),
                  SizedBox(width: 20),
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/diary-book.png",
                    btnText: "Diary",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.redAccent,
                  )),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/notes.png",
                    btnText: "Surprise Notes",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.green,
                  )),
                  SizedBox(width: 20),
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/horoscope.png",
                    btnText: "Horoscopes",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.purple,
                  )),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/sos.png",
                    btnText: "Emergency",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.purple,
                  )),
                  SizedBox(width: 20),
                  Flexible(child: DashboardGradientFeature(
                    iconImg: "assets/images/activity.png",
                    btnText: "Activity",
                    clr: [Colors.white,Colors.white],
                    weight: FontWeight.w900,
                    iconColor: Colors.blueAccent,
                  )),
                ],
              ),
            ),
            SizedBox(height: 30),

          ],
        ),
      ),

    );
  }
}
