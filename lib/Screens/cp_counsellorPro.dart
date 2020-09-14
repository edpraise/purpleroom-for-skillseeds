import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
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
            // leading: Offstage(),
            backgroundColor: Color(0xFF21012B),
            title: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                      Text("Relationship",
                          style: TextStyle(color: Colors.orange, fontSize: 8)),
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
            ),
            bottom: PreferredSize(
              
              // preferredSize: Size.fromHeight(250),
               preferredSize: Size(double.infinity, 214),
              child: TabBar(tabs: [
                Tab(
                  text: 'Infomation',
                ),
                Tab(
                  text: 'Review',
                ),
              ]),
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
