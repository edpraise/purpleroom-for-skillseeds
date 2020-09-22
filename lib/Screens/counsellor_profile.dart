import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:purple_room/features/authentication/presentation/widgets/appbar_actions.dart';

import 'cp_counsellorPro.dart';

class Cprofile extends StatefulWidget {
  @override
  _CprofileState createState() => _CprofileState();
}

class _CprofileState extends State<Cprofile> {
  List<dynamic> imageList = [
    "assets/images/a.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        backgroundColor: Color(0xFF21012B),
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 15),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        actions: [
          AppBarActions(),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CircularProfileAvatar(
                            '',
                            child: Image.asset(
                              'assets/images/2.jpg',
                              fit: BoxFit.cover,
                            ),
                            radius: 60,
                          ),
                          SizedBox(
                            height: 0.0,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: -12,
                        left: 10,
                        child: new FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            color: Color(0xFF660066),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      CpCounsellorProfileInfo()));
                            },
                            child: new Text('Apply',
                                style: TextStyle(color: Colors.white))))
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 70.0, left: 30, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("David Bruno",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      Text("San Fransisco, CA ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("lorem ipsum madagekikrk.. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal)),
                      Text("lorem ipsum madagahuus.. ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "109",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text("posts")
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("100",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("Reviews"),
                    ],
                  ),
                  SizedBox(width: 80),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("71",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("Sessions"),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => new Container(
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover))),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ],
      ),
    );
  }
}
