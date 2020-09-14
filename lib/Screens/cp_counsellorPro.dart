import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class CpCounsellorProfileInfo extends StatefulWidget {
  @override
  _CpCounsellorProfileInfoState createState() => _CpCounsellorProfileInfoState();
}

class _CpCounsellorProfileInfoState extends State<CpCounsellorProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                 CircularProfileAvatar(
                            '',
                            child: Image.asset('assets/images/bls.jpg'),
                            borderColor: Color(0xFFFF8F00),
                            borderWidth: 2,
                            elevation: 5,
                            radius: 25,
                          ),
                          Column(
                            children: [
                              Text("Tasun Prasad",style: TextStyle(color: Colors.white)),
                              Text("Relationship", style: TextStyle(color: Colors.orange)),
                            ],
                          ),
                           Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "109",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text("posts")
                      ],
                    ),
                    SizedBox(width: 80),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("100",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Reviews"),
                      ],
                    ),
                    SizedBox(width: 80),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("71",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text("Sessions"),
                      ],
                    )
                  ],
                ),
              ),
          ],
        )
      ),
      
    );
  }
}