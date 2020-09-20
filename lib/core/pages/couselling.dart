import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/counsellor_profile.dart';

class CounselMainScreen extends StatefulWidget {
  @override
  _CounselMainScreenState createState() => _CounselMainScreenState();
}

class _CounselMainScreenState extends State<CounselMainScreen> {
  List<Map<String, dynamic>> categoryList = [
    {"icon": Icons.mic_none, "categoryName": "Relationship"},
    {"icon": Icons.healing, "categoryName": "Business"},
    {"icon": Icons.card_membership, "categoryName": "Addiction"}
  ];
  
  List<Map<String, dynamic>> listOfChatAbleCounsellors = [
    {
      "imageUrl":"Marisa,",
      "name": "",
      "bookbtn": "",
    },
      {
      "imageUrl":"",
      "name": "",
      "bookbtn": "",
    },
      {
      "imageUrl":"",
      "name": "",
      "bookbtn": "",
    },
      {
      "imageUrl":"",
      "name": "",
      "bookbtn": "",
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
              Text("All Categories", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 7),
              Container(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return categoryContainer(categoryList[index]['icon'],
                        categoryList[index]['categoryName']);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Counsellors Online",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              SizedBox(height: 20),
              ListOfChatableCounsellors(),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryContainer(IconData icon, String categoryName) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Icon(icon),
              SizedBox(height: 20),
               Text(categoryName)],
          ),
        ),
        height: 100,
        width: 130,
        decoration: BoxDecoration(
            color: Color(0XFFe69500), borderRadius: BorderRadius.circular(15)));
  }
}

class ListOfChatableCounsellors extends StatelessWidget {
  const ListOfChatableCounsellors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircularProfileAvatar(
          '',
          child: Image.asset('assets/images/bls.jpg'),
          // borderColor: Color(0xFFFF8F00),
          borderWidth: 2,
          elevation: 5,
          radius: 25,
        ),
        
        
       
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Marisa Fair",
                style: TextStyle(color: Colors.white)),
                SizedBox(height: 5,),
            Text("Berlin Germany",
                style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
        SizedBox(width: 120,),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Cprofile()));
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
  }
}
