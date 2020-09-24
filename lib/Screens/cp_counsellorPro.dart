// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
// import 'package:flutter/material.dart';
// import 'package:purple_room/Screens/voice_call.dart';
// import 'package:purple_room/core/pages/info.dart';
// import 'package:purple_room/core/pages/reviews.dart';

// class CpCounsellorProfileInfo extends StatefulWidget {
//   @override
//   _CpCounsellorProfileInfoState createState() =>
//       _CpCounsellorProfileInfoState();
// }

// class _CpCounsellorProfileInfoState extends State<CpCounsellorProfileInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: Color(0xFF21012B),
//         body: Scaffold(
//           appBar: AppBar(
//             leading: Offstage(),
//             backgroundColor: Color(0xFF21012B),
//             title: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CircularProfileAvatar(
//                       '',
//                       child: Image.asset('assets/images/bls.jpg'),
//                       borderColor: Color(0xFFFF8F00),
//                       borderWidth: 2,
//                       elevation: 2,
//                       radius: 20,
//                     ),
//                     Column(
//                       children: [
//                         Text("Tasun Prasad",
//                             style:
//                                 TextStyle(color: Colors.white, fontSize: 10)),
//                         Text("Relationship",
//                             style:
//                                 TextStyle(color: Colors.orange, fontSize: 8)),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.star,
//                               color: Colors.orangeAccent,
//                               size: 12,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orangeAccent,
//                               size: 12,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orangeAccent,
//                               size: 12,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.orangeAccent,
//                               size: 12,
//                             ),
//                             Icon(
//                               Icons.star,
//                               color: Colors.white,
//                               size: 12,
//                             ),
//                           ],
//                         ),
//                         Container(
//                             height: 20,
//                             width: 80,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5),
//                               color: Colors.orange,
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(4.0),
//                               child: Text(
//                                 "Book Now",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ))
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             bottom: PreferredSize(
//               preferredSize: Size(double.infinity, 164),
//               child: Column(
//                 children: [
//                   TabBar(tabs: [
//                     Tab(
//                       text: 'Infomation',
//                     ),
//                     Tab(
//                       text: 'Review',
//                     ),
//                   ]),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     // child: Container(
//                     //   decoration: BoxDecoration(
//                     //     color: Colors.white,
//                     //     borderRadius: BorderRadius.circular(20),
//                     //   ),
//                     //   height: MediaQuery.of(context).size.height / 15,
//                     //   width: MediaQuery.of(context).size.width,
//                     //   child: Row(
//                     //     children: [
//                     //       SizedBox(
//                     //         width: 20,
//                     //       ),
//                     //       Column(
//                     //         mainAxisAlignment: MainAxisAlignment.center,
//                     //         children: [
//                     //           Text(
//                     //             "109",
//                     //             style: TextStyle(
//                     //                 fontWeight: FontWeight.bold, fontSize: 20),
//                     //           ),
//                     //           Text("posts")
//                     //         ],
//                     //       ),
//                     //       SizedBox(width: 80),
//                     //       Column(
//                     //         mainAxisAlignment: MainAxisAlignment.center,
//                     //         children: [
//                     //           Text("100",
//                     //               style: TextStyle(
//                     //                   fontWeight: FontWeight.bold,
//                     //                   fontSize: 20)),
//                     //           Text(
//                     //             "Reviews",
//                     //           ),
//                     //         ],
//                     //       ),
//                     //       SizedBox(width: 80),
//                     //       Column(
//                     //         mainAxisAlignment: MainAxisAlignment.center,
//                     //         children: [
//                     //           Text("71",
//                     //               style: TextStyle(
//                     //                   fontWeight: FontWeight.bold,
//                     //                   fontSize: 20)),
//                     //           Text("Sessions"),
//                     //         ],
//                     //       )
//                     //     ],
//                     //   ),
//                     // ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("AVAILABLE FOR",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 10,
//                                 color: Colors.white)),
//                         Container(
//                             height: 40,
//                             width: 40,
//                             decoration: BoxDecoration(
//                                 color: Colors.orange,
//                                 borderRadius: BorderRadius.circular(20)),
//                             child: Icon(Icons.message, color: Colors.white)),
//                         Container(
//                             height: 40,
//                             width: 40,
//                             decoration: BoxDecoration(
//                                 color: Colors.orange,
//                                 borderRadius: BorderRadius.circular(20)),
//                             child: GestureDetector(
//                               onTap:(){
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => VoiceCall()));
//                               },
//                               child: Icon(Icons.call, color: Colors.white))),
//                         Container(
//                             height: 40,
//                             width: 40,
//                             decoration: BoxDecoration(
//                                 color: Colors.orange,
//                                 borderRadius: BorderRadius.circular(20)),
//                             child: GestureDetector(
//                               onTap: (){
//                                  Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => VoiceCall()));
//                               },
//                               child: Icon(Icons.videocam, color: Colors.white)))
//                         // Icon(Icons.call, color: Colors.white),
//                         // Icon(Icons.videocam, color: Colors.white),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               InfoScreen(),
//               ReviewScreen(),
//               // Store(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/video_call.dart';
import 'package:purple_room/Screens/voice_call.dart';
import 'package:purple_room/core/pages/info.dart';
import 'package:purple_room/models/review_model.dart';

enum WidgetMarker { Information, Review }

class CpCounsellorProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircularProfileAvatar(
                            '',
                            child: Image.asset('assets/images/bls.jpg'),
                            borderColor: Color(0xFFFF8F00),
                            borderWidth: 2,
                            elevation: 2,
                            radius: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Text("Tasun Prasad",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                                Text("Relationship",
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 15)),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.orange,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(
                                        child: Text(
                                          "Book Now",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "109",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text("posts")
                                ],
                              ),
                              // SizedBox(width: 80),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("100",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text(
                                    "Reviews",
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("71",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  Text(
                                    "Sessions",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("AVAILABLE FOR",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white)),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child:
                                    Icon(Icons.message, color: Colors.white)),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VoiceCall()));
                                    },
                                    child:
                                        Icon(Icons.call, color: Colors.white))),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VideoCallScreen()));
                                    },
                                    child: Icon(Icons.videocam,
                                        color: Colors.white)))
                            // Icon(Icons.call, color: Colors.white),
                            // Icon(Icons.videocam, color: Colors.white),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              BodyWidget()
            ],
          )),
        ),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  List<Review> list = Review.list;
  WidgetMarker selectedWidgetMarker = WidgetMarker.Information;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.Information;
                    });
                  },
                  child: Text("Information",
                      style: TextStyle(color: Colors.white)),
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      selectedWidgetMarker = WidgetMarker.Review;
                    });
                  },
                  child: Text("Reviews", style: TextStyle(color: Colors.white)),
                )
              ],
            ),
            Container(
              // height: 200,
              color: Color(0xFF21012B),
              child: getCustomContainer(),
            )
          ],
        ),
      ),
    );
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.Information:
        return getInfoContainer();
      case WidgetMarker.Review:
        return getReviewContainer();
    }
    return getInfoContainer();
  }

  Widget getInfoContainer() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          // height: 200,
          color: Color(0xFF21012B),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.info, color: Colors.orange),
                  SizedBox(width: 10),
                  Text("About", style: TextStyle(color: Colors.white)),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      child: Text(
                    "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
                    style: TextStyle(color: Colors.white),
                  ))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.public,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        child: Text("Language",
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      child: Text(
                    "English, Hause, Igbo",
                    style: TextStyle(color: Colors.white),
                  ))),
              //  Padding(
              //    padding: const EdgeInsets.all(15.0),
              //    child: Container(child: Text( "English, Hause, Igbo", style: TextStyle(color: Colors.white))),
              //  ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.today, color: Colors.orange),
                  SizedBox(width: 10),
                  Text("Availability", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("9am-5pm EST", style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getReviewContainer() {
    return Container(
      height:MediaQuery.of(context).size.height,
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
                              image: ExactAssetImage("assets/images/bls.jpg"),
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
        Row(
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
                    hintStyle: TextStyle(color: Colors.white, fontSize: 12),
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
      ],
    )
    );
  }
}
