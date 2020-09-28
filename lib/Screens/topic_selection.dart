import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class TopicSelection extends StatefulWidget {
  @override
  _TopicSelectionState createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  List<Map<String, dynamic>> topicList = [
    {
      "imagesrc": "assets/images/p.jpg",
      "title": "politics",
    },
    {
      "imagesrc": "assets/images/h.png",
      "title": "history",
    },
    {
      "imagesrc": "assets/images/s.jpg",
      "title": "Science",
    },
    {
      "imagesrc": "assets/images/la.jpg",
      "title": "law",
    },
    {
      "imagesrc": "assets/images/food.jpg",
      "title": "food",
    },
    {
      "imagesrc": "assets/images/doct.jpg",
      "title": "medical",
    },
    {
      "imagesrc": "assets/images/de.jpg",
      "title": "design",
    },
    {
      "imagesrc": "assets/images/de.jpg",
      "title": "culture",
    },
    {
      "imagesrc": "assets/images/sp.jpg",
      "title": "sport",
    }
  ];

  //  int _selectedIndex = 0;

  // _onSelected(int index) {
  //   setState(() => _selectedIndex = index);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        titleSpacing: -10,
        leading: Icon(
          Icons.tv,
          color: Colors.orangeAccent,
        ),
        backgroundColor: Color(0xFF21012B),
        title: Row(
          children: [Text("Purple"), Text("Room")],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.notifications_none),
                    SizedBox(width: 10),
                    Icon(Icons.apps),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Choose the topic",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    CircularProfileAvatar(
                      '',
                      child: Image.asset('assets/images/x.png'),
                      borderColor: Color(0xFFFF8F00),
                      borderWidth: 2,
                      elevation: 5,
                      radius: 40,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(9, (index) {
                      return Column(
                        
                        children: [
                        CircularProfileAvatar(
                          '',
                          child: Image.asset("${topicList[index]['imagesrc']}",fit: BoxFit.cover, ), 
                          // borderColor: Color(0xFFFF8F00),
                          // borderWidth: 2,
                          elevation: 5,
                          radius: 40,
                        ),
                        Text("${topicList[index]['title']}",
                            style: TextStyle(color: Colors.white)),
                      ]);
                    }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("More Topics",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      decoration: TextDecoration.underline,
                    )),
                SizedBox(
                  height: 10,
                ),
                new FlatButton(
                    padding: EdgeInsets.symmetric(horizontal: 125),
                    color: Color(0xFFFF8F00),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: new Text('Apply'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
