import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/widgets/appbar_actions.dart';

class EbookScreen extends StatefulWidget {
  @override
  _EbookScreenState createState() => _EbookScreenState();
}

class _EbookScreenState extends State<EbookScreen> {

   List<Map<String, dynamic>> audioList = [
    {
      "imageUrl": "assets/images/ju.jpg",
      "title": "rich dad ",
    },
    {
      "imageUrl": "assets/images/hb.jpg",
      "title": " make money",
    },
    {
      "imageUrl": "assets/images/ju.jpg",
      "title": "now you see me",
    },
    {
      "imageUrl": "assets/images/ju.jpg",
      "title": "truth today",
    },
    {
      "imageUrl": "assets/images/ju.jpg",
      "title": "current life",
    },
    {
      "imageUrl": "assets/images/ju.jpg",
      "title": "the life",
    },
    {
      "imageUrl": "assets/images/hb.jpg",
      "title": "how to live",
    },
    {
      "imageUrl": "assets/images/hb.jpg",
      "title": "the life ",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21012B),
        appBar: AppBar(
          backgroundColor: Color(0xFF21012B),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Ebooks",
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBarActions(),
            )
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(audioList.length, (index) {
                        return Column(
                          
                          children: [
                          CircularProfileAvatar(
                            '',
                            child: Image.asset("${audioList[index]['imageUrl']}",fit: BoxFit.cover, ), 
                            // borderColor: Color(0xFFFF8F00),
                            // borderWidth: 2,
                            elevation: 5,
                            radius: 40,
                          ),
                          SizedBox(width: 10,),
                          Text("${audioList[index]['title']}",
                              style: TextStyle(color: Colors.white)),
                        ]);
                      }),
                    ),
                  ),
        ),
      
    );
  }
}