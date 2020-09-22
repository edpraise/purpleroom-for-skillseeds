import 'package:badges/badges.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/counsellor_profile.dart';

class CounselMainScreen extends StatefulWidget {
  @override
  _CounselMainScreenState createState() => _CounselMainScreenState();
}

class _CounselMainScreenState extends State<CounselMainScreen> {
  List<Map<String, dynamic>> categoryList = [
    {
      "icon": Icons.mic_none,
      "categoryName": "Relationship",
      "color": Color(0xFFFF8F00)
    },
    {
      "icon": Icons.healing,
      "categoryName": "Business",
      "color": Color(0xFFac00e6).withOpacity(0.3)
    },
    {
      "icon": Icons.card_membership,
      "categoryName": "Addiction",
      "color": Color(0xFFac00e6).withOpacity(0.3)
    }
  ];

  List<Map<String, dynamic>> listOfChatAbleCounsellors = [
    // {
    //   "imageUrl": "assets/images/1.jpg",
    //   "name": "joe",
    //   "city":"Berlin",
    //   "bookbtn": "Book now",
    // },
    {
      "imageUrl": "assets/images/2.jpg",
      "name": "Kenneth Erick",
      "city": "chicago",
      "bookbtn": "Book now",
    },
    {
      "imageUrl": "assets/images/3.jpg",
      "name": "Mitcehel Lake",
      "city": "Dublin",
      "bookbtn": "Book now",
    },
    {
      "imageUrl": "assets/images/4.jpg",
      "name": "Lannet Strand",
      "city": "chicago",
      "bookbtn": "Book now",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("All Categories",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 7),
              Container(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return categoryContainer(
                        categoryList[index]['icon'],
                        categoryList[index]['categoryName'],
                        categoryList[index]['color']);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Counsellors Online",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) => Divider(),
                  itemCount: listOfChatAbleCounsellors.length,
                  itemBuilder: (context, int index) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircularProfileAvatar(
                          '',
                          child: Image.asset("${listOfChatAbleCounsellors[index]['imageUrl']}", fit: BoxFit.cover,),
                          // borderColor: Color(0xFFFF8F00),
                          // borderWidth: 2,
                          elevation: 5,
                          radius: 25,
                        ),
                        Badge(
                          alignment: Alignment.bottomRight,
                          // position:,
      badgeColor: Colors.green,
      shape: BadgeShape.circle,
      borderRadius: 5,
      toAnimate: false,
      
         
    ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(listOfChatAbleCounsellors[index]['name'],
                                style: TextStyle(color: Colors.white)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(listOfChatAbleCounsellors[index]['city'],
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Cprofile()));
                          },
                          child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Center(
                                  child: Text("Book now",
                  style: TextStyle(color: Colors.black)))),
                        ),
                      ],
                    );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryContainer(IconData icon, String categoryName, Color color) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(height: 20),
              Text(categoryName, style: TextStyle(color:Colors.white)),
            ],
          ),
        ),
        height: 100,
        width: 130,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)));
  }
}
