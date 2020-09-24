import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/topic_selection.dart';
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
          titleSpacing: -10.0,
          title: Row(
            children: [Text("Purple", style: TextStyle(fontSize: 25, ),), Text("Room", style: TextStyle(fontSize: 25,color: Colors.orangeAccent ))],
          ),
          actions: [
            Icon(Icons.notifications_none, size: 30,),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TopicSelection()));
                },
                child: Icon(Icons.apps)),
            )
          ],
        ),
        body: Scaffold(
          appBar: AppBar(
            leading: Offstage(),
            backgroundColor: Color(0xFF21012B),
            titleSpacing: -35.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container(),
                    // SizedBox(height: 10),
                    Text(
                      "Hello, Geralt!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "lets explore whats happening today",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(width: 55),
                CircularProfileAvatar(
                  '',
                  child: Image.asset('assets/images/bls.jpg'),
                  borderColor: Color(0xFFFF8F00),
                  borderWidth: 2,
                  elevation: 2,
                  radius: 25,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: TabBar(tabs: [
                Tab(
                  text: 'Counselling',
                ),
                Tab(
                  text: 'Feed',
                ),
                Tab(
                  text: 'Store',
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
