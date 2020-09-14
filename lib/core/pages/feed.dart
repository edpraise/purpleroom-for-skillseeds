import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
   List<Map<String, dynamic>> categoryList = [
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "add"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "health"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "medicine"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "family"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "music"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "culture"},
    {"imageUrl": 'assets/images/bls.jpg', "categoryName": "politics"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21012B),
        body: Column(
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
              )
          ],
        ));
  }

  Widget categoryTile(String imageurl, String categoryName) {
    return Column(
      children: [
        CircularProfileAvatar(
          '',
          child: Image.asset('assets/images/bls.jpg'),
          borderColor: Color(0xFFFF8F00),
          borderWidth: 2,
          elevation: 5,
          radius: 25,
        ),
        SizedBox(height: 5),
        Row(
          
          children: [
            Text(categoryName, style: TextStyle(color: Colors.white,),),
          ],
        )
        // Container(child: Text([Text(categoryName)]))
      ],
    );
  }
}
