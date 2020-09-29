import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/models/review_model.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int _current = 0;
  List imgListPost = [
    "assets/images/bls.jpg",
    "assets/images/1.jpg",
    "assets/images/5.jpg",
    "assets/images/4.jpg"
  ];
  List<Review> list = Review.list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF21012B),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: <Widget>[
                
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child:
                      Image.asset("assets/images/bls.jpg", fit: BoxFit.cover),
                ),
                // CarouselSlider(
                //     height: 400,
                //     initialPage: 0,
                //     onPageChanged: (index) {
                //       setState(() {
                //         _current = index;
                //       });
                //     },
                //     items: imgListPost.map((imageUrl) {
                //       return Builder(
                //         builder: (BuildContext context) {
                //         return Container(
                //           width: MediaQuery.of(context).size.width,
                //           margin: EdgeInsets.symmetric(horizontal: 10),
                //           decoration: BoxDecoration(
                //             color: Colors.purple,
                //           ),
                //           child: Image.asset(imageUrl, fit),
                //         );
                //       });
                //     }).toList()),
                Positioned(
                  left: 30,
                  top: 60,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                Positioned(
                  right: 30,
                  top: 60,
                  child: Icon(Icons.more_vert, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                  ],
                ),
                Text(
                  "247",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.message, color: Color(0xFF21012B)),
                      ],
                    ),
                    Text(
                      "247",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.reply, color: Color(0xFF21012B)),
                          ],
                        ),
                        Text(
                          "247",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 90,),
                 Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bookmark, color: Colors.orange),
                          ],
                        ),
                       
                      ],
                    ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: ExactAssetImage(
                                      "assets/images/bls.jpg",
                                    ),
                                  ))),
                          title: Text(
                            list[index].reviewerName,
                            style: TextStyle(color: Colors.black),
                          ),
                          // subtitle: list[index].isTyping ?
                          subtitle: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    list[index].reviewMessage,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    list[index].messagetime,
                                    style: TextStyle(color: Colors.black),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(30.0),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
