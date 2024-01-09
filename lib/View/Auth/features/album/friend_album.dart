import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

import '../../../../Widgets/album/gallery_header.dart';

class FriendAlbum extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        GalleryHead(
        context: context,
        isEditable: false,
        toVal: "0",
        tuVal: "0",
        name: "Friend's Gallery",
        description: "Tell your partner what this album means to you !",
      ),
          Container(
            child: StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                crossAxisCount: 4,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return FocusedMenuHolder(
                    menuWidth: MediaQuery.of(context).size.width * 0.50,
                    blurSize: 2.0,
                    menuItemExtent: 45,
                    menuBoxDecoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    duration: Duration(milliseconds: 100),
                    animateMenuItems: true,
                    blurBackgroundColor: Colors.black,
                    menuOffset: 10,
                    bottomOffsetHeight: 80,
                    menuItems: <FocusedMenuItem>[
                      FocusedMenuItem(
                          title: Text("Open"),
                          trailingIcon: Icon(Icons.open_in_new),
                          onPressed: () {}),
                      FocusedMenuItem(
                          title: Text(
                            "Delete",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          trailingIcon: Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {}),
                    ],
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {},
                        child: Hero(
                          tag: "gallery",
                          child: Image.network(
                            "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isEven ? 2 : 3),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 15.0),
          )
      ],
      ),
    );
  }
}
