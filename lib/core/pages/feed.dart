import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/posts.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<Map<String, dynamic>> categoryList = [
    {"imageUrl": 'assets/images/plus.png', "categoryName": "Add"},
    {"imageUrl": 'assets/images/yoga.jpg', "categoryName": "Health"},
    {"imageUrl": 'assets/images/scope.jpg', "categoryName": "Medicine"},
    {"imageUrl": 'assets/images/fa.jpg', "categoryName": "Family"},
    {"imageUrl": 'assets/images/re.jpg', "categoryName": "Macjdk"},
    // {"imageUrl": 'assets/images/bls.jpg', "categoryName": "culture"},
    // {"imageUrl": 'assets/images/bls.jpg', "categoryName": "politics"},
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
                          style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                      Text("See all", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              //
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  // decoration: BoxDecoration(color: Colors.grey),
                  height: 100,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return categoryTile(categoryList[index]['imageUrl'],
                          categoryList[index]['categoryName']);
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0,),
                    child: Text("Wall", style: TextStyle(color: Colors.white, fontSize: 15,))),
                ],
              ),
              SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircularProfileAvatar(
                      '',
                      child: Image.asset('assets/images/l.jpg', fit: BoxFit.cover),
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
                            onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PostScreen()));
                            },
                                                      child: Text(
                              "Michael Bruno",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Traveler, Life lover",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 125,),
                    Icon(
                      Icons.more_vert, color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(height:2),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width/0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/l.jpg', fit: BoxFit.cover,))
                  
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    Text("247",   style: TextStyle(color: Colors.white)),
                    SizedBox(width: 30),
                    Icon(Icons.chat_bubble, color: Colors.white),
                     Text("43",  style: TextStyle(color: Colors.white)),
                     SizedBox(width: 30),
                    Icon(Icons.reply, color: Colors.white),
                    Text("33",  style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircularProfileAvatar(
                      '',
                      child: Image.asset('assets/images/x.png'),
                      // borderColor: Color(0xFFFF8F00),
                      // borderWidth: 2,
                      elevation: 5,
                      radius: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Emma Stone",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), 
                          
                          Text("photographer", style: TextStyle(color: Colors.grey))],
                      ),
                    ),
                    SizedBox(width: 165,),
                    Icon(Icons.more_vert, color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget categoryTile(String imageurl, String categoryName) {
    return Column(
      children: [
        CircularProfileAvatar(
          '',
          child: Image.asset(imageurl,  fit: BoxFit.cover,),
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
