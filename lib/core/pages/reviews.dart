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
      body:  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                          child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                    
                      leading:  Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image:
                          ExactAssetImage("assets/images/bls.jpg")
                          )
                        )
                      ),
                      title: Text(
                        list[index].reviewerName,
                        style: TextStyle(color: Colors.white),
                      ),
                      // subtitle: list[index].isTyping ?
                           subtitle: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  list[index].reviewMessage,
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  list[index].messagetime ,
                                  style: TextStyle(color: Colors.white),
                                )

                              ],
                            ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}