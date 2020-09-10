import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> topicList = [
    {
      "imagesrc": "",
      "title": "politics",
    },
    {
      "imagesrc": "",
      "title": "history",
    },
    {
      "imagesrc": "",
      "title": "Science",
    },
    {
      "imagesrc": "",
      "title": "law",
    },
    {
      "imagesrc": "",
      "title": "food",
    },
    {
      "imagesrc": "",
      "title": "medical",
    },
    {
      "imagesrc": "",
      "title": "design",
    },
    {
      "imagesrc": "",
      "title": "culture",
    },
    {
      "imagesrc": "",
      "title": "sport",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.notifications),
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
                      child: Image.asset('assets/images/bls.jpg'),
                      borderColor: Color(0xFFFF8F00),
                      borderWidth: 2,
                      elevation: 5,
                      radius: 30,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(9, (index) {
                      return Column(children: [
                        CircularProfileAvatar(
                          '',
                          child: Image.asset('assets/images/bls.jpg'),
                          borderColor: Color(0xFFFF8F00),
                          borderWidth: 2,
                          elevation: 5,
                          radius: 30,
                        ),
                        Text("${topicList[index]['title']}",
                            style: TextStyle(color: Colors.white)),
                      ]);
                    }),
                  ),
                ),
                Text("submit", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
