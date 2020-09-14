import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/core/pages/couselling.dart';
import 'package:purple_room/core/pages/feed.dart';
import 'package:purple_room/core/pages/store.dart';

class CounselHome extends StatefulWidget {
  @override
  _CounselHomeState createState() => _CounselHomeState();
}

class _CounselHomeState extends State<CounselHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF21012B),
        appBar: AppBar(
          leading: Icon(
            Icons.tv,
            color: Colors.orangeAccent,
          ),
          backgroundColor: Color(0xFF21012B),
          title: Row(
            children: [Text("Purple"), Text("Room")],
          ),
          actions: [
            Icon(Icons.notifications),
            SizedBox(width: 5),
            Icon(Icons.apps)
          ],
        ),
        body: Scaffold(
          appBar: AppBar(
            leading: Offstage(),
            backgroundColor: Color(0xFF21012B),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(),
                    SizedBox(height: 10),
                    Text(
                      "Hello Geralt!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    Text(
                      "lets explore whats happening today",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    )
                  ],
                ),
                CircularProfileAvatar(
                  '',
                  child: Image.asset('assets/images/bls.jpg'),
                  borderColor: Color(0xFFFF8F00),
                  borderWidth: 2,
                  elevation: 2,
                  radius: 20,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: TabBar(tabs: [
                Tab(
                  text: 'counselling',
                ),
                Tab(
                  text: 'feed',
                ),
                Tab(
                  text: 'story',
                )
              ]),
            ),
          ),
          body: TabBarView(
            children: [
              CounselMainScreen(),
              FeedScreen(),
              Store(),
            ],
          ),
        ),
      ),
    );
  }
}

// Column(
//             children: [
//               Row(
//                 children: [
//                   Column(
//                     children: [
//                       Container(

//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         "Hello Geralt!",
//                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
//                       ),
//                       Text(
//                         "lets explore whats happening today",
//                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
//                       )
//                     ],
//                   ),
//                   CircularProfileAvatar(
//                     '',
//                     child: Image.asset('assets/images/bls.jpg'),
//                     borderColor: Color(0xFFFF8F00),
//                     borderWidth: 2,
//                     elevation: 2,
//                     radius: 20,
//                   ),
//                 ],
//               ),
//             ],
//           ),
