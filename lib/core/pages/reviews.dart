import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/models/review_model.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  List<Review> list = Review.list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Expanded(
                        child: Container(
                            width: 50,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image:
                                      ExactAssetImage("assets/images/bls.jpg"),
                                ))),
                      ),
                      title: Text(
                        list[index].reviewerName,
                        style: TextStyle(color: Colors.white),
                      ),
                      // subtitle: list[index].isTyping ?
                      subtitle: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                list[index].reviewMessage,
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                list[index].messagetime,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        image: DecorationImage(
                            image: AssetImage('assets/images/bls.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: "Add a Comment",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(20.0),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFF410255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
