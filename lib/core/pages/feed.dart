import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<Map<String, dynamic>> categoryList = [
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "add"},
    {"imageUrl": 'assets/images/hea.jpg', "categoryName": "health"},
    {"imageUrl": 'assets/images/doc.jpg', "categoryName": "medicine"},
    {"imageUrl": 'assets/images/fa.jpg', "categoryName": "family"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "music"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "culture"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "politics"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21012B),
        body: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Categories you like",
                          style: TextStyle(color: Colors.white)),
                      Text("See all", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              //
              Container(
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
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Wall", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              SizedBox(height:10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/images/l.jpg'),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 2,
                    elevation: 5,
                    radius: 25,
                  ),
                  // SizedBox(height:0),
                  Column(
                    children: [
                      Text(
                        "Michael bruno",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Traveler, life lover",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert, color: Colors.white,
                  )
                ],
              ),
              SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    
                    ),
                    child: Image.asset('assets/images/l.jpg', fit: BoxFit.cover,)
                  
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    Text("247",   style: TextStyle(color: Colors.white)),
                    Icon(Icons.chat_bubble, color: Colors.white),
                     Text("43",  style: TextStyle(color: Colors.white)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircularProfileAvatar(
                      '',
                      child: Image.asset('assets/images/x.png'),
                      borderColor: Color(0xFFFF8F00),
                      borderWidth: 2,
                      elevation: 5,
                      radius: 25,
                    ),
                    Column(
                      children: [Text("Emma Stone",style: TextStyle(color: Colors.white) ), Text("photographer", style: TextStyle(color: Colors.white))],
                    ),
                    Icon(Icons.more_vert, color: Colors.white),
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
          child: Image.asset(imageurl),
          borderColor: Color(0xFFFF8F00),
          borderWidth: 2,
          elevation: 5,
          radius: 25,
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
