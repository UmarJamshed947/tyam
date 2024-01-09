import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumNewPost extends StatelessWidget {
  const AlbumNewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "assets/images/logo.png",
          ))),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Container(),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png"),
                ),),
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write a caption..",
                  border: InputBorder.none,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100,vertical: 50),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xffFFD700)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              onPressed: (){},
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("POST PICTURE",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 15
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
