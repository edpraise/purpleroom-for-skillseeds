import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/widgets/videolist_widget.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  List<Map<String, dynamic>> videoList = [
    {
      "imageUrl": "assets/images/ju.jpg",
    },
    {
      "imageUrl": "assets/images/hb.jpg",
    },
    {
      "imageUrl": "assets/images/ju.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(color: Colors.grey)),
            SizedBox(width: 10),
            Container(
                height: 150,
                width: 220,
                decoration: BoxDecoration(color: Colors.grey)),
            SizedBox(width: 10),
            Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(color: Colors.grey)),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Videos", style: TextStyle(color: Colors.white)),
              Text("See all", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => Divider(
                      color: Colors.transparent,
                    ),

                itemCount: videoList.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: VideoList(
                      imageUrl: videoList[i]["imageUrl"],
                    ),
                  );
                })),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Customized shirts", style: TextStyle(color: Colors.white)),
                    Text("see all", style: TextStyle(color: Colors.white),)
                  ],
                ),
           Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
                          child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.grey)),
            ),
            SizedBox(width: 10),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.grey)),
            SizedBox(width: 10),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.grey)),
          ]),

      ]),
    );
  }
}
