import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/gift_ebook.dart';
import 'package:purple_room/Screens/posts.dart';
import 'package:purple_room/Screens/topic_selection.dart';
import 'package:purple_room/features/authentication/presentation/widgets/bottom_navigation%20_mainScreen.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<Map<String, dynamic>> categoryList = [
    // {"imageUrl": 'assets/images/plus.png', "categoryName": "Add"},
    {"imageUrl": 'assets/images/yoga.jpg', "categoryName": "Health"},
    {"imageUrl": 'assets/images/scope.jpg', "categoryName": "Medicine"},
    {"imageUrl": 'assets/images/fa.jpg', "categoryName": "Family"},
    {"imageUrl": 'assets/images/re.jpg', "categoryName": "Macjdk"},
  ];

  List<Map<String, dynamic>> peopleBelowList = [
    {
      "imageUrl": 'assets/images/1.jpg',
      "personsName": 'daniel moses',
      "occupation": 'photographer'
    },
    {
      "imageUrl": 'assets/images/2.jpg',
      "personsName": 'obateru joshua',
      "occupation": 'photographer'
    },
    {
      "imageUrl": 'assets/images/3.jpg',
      "personsName": 'cholesky emma',
      "occupation": 'photographer'
    },
    {
      "imageUrl": 'assets/images/4.jpg',
      "personsName": 'peps uju',
      "occupation": 'photographer'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21012B),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Categories you Like",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      GestureDetector(
                         onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GiftBook()));
                         },
                                              child: Text("See all",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              //
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TopicSelection()));
                            },
                            child: CircularProfileAvatar(
                              '',
                              child: Icon(
                                Icons.add,
                                size: 35,
                              ),
                              elevation: 10,
                              radius: 38,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Add",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 100,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 10),
                            itemCount: categoryList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return categoryTile(
                                  categoryList[index]['imageUrl'],
                                  categoryList[index]['categoryName']);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text("Your Feed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ))),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularProfileAvatar(
                      '',
                      child:
                          Image.asset('assets/images/l.jpg', fit: BoxFit.cover),
                      // borderColor: Color(0xFFFF8F00),
                      // borderWidth: 2,
                      elevation: 5,
                      radius: 25,
                    ),
                    // SizedBox(height:0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PostScreen()));
                            },
                            child: Text(
                              "Michael Bruno",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Traveler, Life lover",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width / 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/l.jpg',
                          fit: BoxFit.cover,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    Text("247", style: TextStyle(color: Colors.white)),
                    SizedBox(width: 30),
                    Icon(Icons.chat_bubble, color: Colors.white),
                    Text("43", style: TextStyle(color: Colors.white)),
                    SizedBox(width: 30),
                    Icon(Icons.reply, color: Colors.white),
                    Text("33", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height:200,
                  child: ListView.separated(
                      itemBuilder: (context, int index) {
                        return Peoplebelow(
                          imageUrl: peopleBelowList[index]['imageUrl'],
                          occupation: peopleBelowList[index]['occupation'],
                          peronsName: peopleBelowList[index]['personsName'],
                        );
                      },
                      separatorBuilder: (context, int index) =>
                          SizedBox(height: 5),
                      itemCount: peopleBelowList.length))
            ],
          ),
        ));
  }

  Widget categoryTile(String imageurl, String categoryName) {
    return Column(
      children: [
        CircularProfileAvatar(
          '',
          child: Image.asset(
            imageurl,
            fit: BoxFit.cover,
          ),
          // borderColor: Color(0xFFFF8F00),
          // borderWidth: 2,
          elevation: 5,
          radius: 35,
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              categoryName,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        )
        // Container(child: Text([Text(categoryName)]))
      ],
    );
  }
}

class Peoplebelow extends StatelessWidget {
  final String imageUrl, occupation, peronsName;
  const Peoplebelow({
    this.imageUrl,
    this.occupation,
    this.peronsName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularProfileAvatar(
            '',
            child: Image.asset(imageUrl),
            // borderColor: Color(0xFFFF8F00),
            // borderWidth: 2,
            elevation: 5,
            radius: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(peronsName,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text(occupation, style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          SizedBox(
            width: 160,
          ),
          Icon(Icons.more_vert, color: Colors.grey),
        ],
      ),
    );
  }
}
