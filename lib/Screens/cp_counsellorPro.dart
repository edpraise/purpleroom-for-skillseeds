import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/video_call.dart';
import 'package:purple_room/core/pages/info.dart';
import 'package:purple_room/core/pages/reviews.dart';

class CpCounsellorProfileInfo extends StatefulWidget {
  @override
  _CpCounsellorProfileInfoState createState() =>
      _CpCounsellorProfileInfoState();
}

class _CpCounsellorProfileInfoState extends State<CpCounsellorProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF21012B),
        body: Scaffold(
          appBar: AppBar(
            leading: Offstage(),
            backgroundColor: Color(0xFF21012B),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularProfileAvatar(
                      '',
                      child: Image.asset('assets/images/bls.jpg'),
                      borderColor: Color(0xFFFF8F00),
                      borderWidth: 2,
                      elevation: 2,
                      radius: 20,
                    ),
                    Column(
                      children: [
                        Text("Tasun Prasad",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        Text("Relationship",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 8)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 12,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 12,
                            ),
                          ],
                        ),
                        Container(
                            height: 20,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 164),
              child: Column(
                children: [
                  TabBar(tabs: [
                    Tab(
                      text: 'Infomation',
                    ),
                    Tab(
                      text: 'Review',
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height / 15,
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text(
                                "Reviews",
                              ),
                            ],
                          ),
                          SizedBox(width: 80),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("71",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text("Sessions"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("AVAILABLE FOR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.white)),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(Icons.message, color: Colors.white)),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20)),
                            child: GestureDetector(
                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => VideoCall()));
                              },
                              child: Icon(Icons.call, color: Colors.white))),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(Icons.videocam, color: Colors.white))
                        // Icon(Icons.call, color: Colors.white),
                        // Icon(Icons.videocam, color: Colors.white),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              InfoScreen(),
              ReviewScreen(),
              // Store(),
            ],
          ),
        ),
      ),
    );
  }
}
