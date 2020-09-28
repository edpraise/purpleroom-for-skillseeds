import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/wallets%20activities/check_out2_payment.dart';

import '../topic_selection.dart';

class CartSummary extends StatefulWidget {
  @override
  _CartSummaryState createState() => _CartSummaryState();
}

class _CartSummaryState extends State<CartSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        titleSpacing: -10.0,
        leading: Icon(
          Icons.tv,
          color: Colors.orangeAccent,
        ),
        backgroundColor: Color(0xFF21012B),
        title: Row(
          children: [Text("Purple"), Text("Room")],
        ),
        actions: [
          Icon(Icons.notifications_none),
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TopicSelection()));
              },
              child: Icon(Icons.apps)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wallet",
                    style: TextStyle(color: Colors.white),
                  ),
                  CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/images/x.png'),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 2,
                    elevation: 5,
                    radius: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35.0),
              child: Row(
                children: [
                  CircularProfileAvatar(
                    '',
                    child:
                        Icon(Icons.check, color: Color(0xFF00ff00), size: 14),
                    borderColor: Color(0xFF00ff00),
                    borderWidth: 2,
                    backgroundColor: Color(0xFF21012B),
                    elevation: 5,
                    radius: 14,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 100.0,
                      color: Colors.white,
                    ),
                  ),
                  CircularProfileAvatar(
                    '',
                    // child:
                    //     Icon(Icons.check, color: Color(0xFF00ff00), size: 14),
                    borderColor: Colors.white,
                    borderWidth: 2,
                    backgroundColor: Colors.white,
                    elevation: 5,
                    radius: 14,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 100.0,
                      color: Colors.white,
                    ),
                  ),
                  CircularProfileAvatar(
                    '',
                    // child: Icon(Icons.check, color: Color(0xFF00ff00), size: 14),
                    // borderColor: Color(0xFF00ff00),
                    borderWidth: 2,
                    backgroundColor: Colors.white,
                    elevation: 5,
                    radius: 14,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Summary", style: TextStyle(color: Colors.orange)),
                  Text("Payment", style: TextStyle(color: Colors.orange)),
                  Text("CheckOut", style: TextStyle(color: Colors.orange)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Order Details",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Videos",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3 x Man of Truth",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("N500.00",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2 x Breakin Even",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("N300.00",
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("4 x What you really want",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("250.00",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1 x Beign a Christian",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Text("200.00",
                            style: TextStyle(
                              color: Colors.white,
                            ))
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Physical Products",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3 x T-shirts (Customized)",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 10),
                      Text("N 750.00",
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("SubTotal ",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Text(
                          "N5,500.00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF21012B),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            'Back',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFF8F00),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: Center(
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CkOutPayme()));
                                },
                                child: Text('Next',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
