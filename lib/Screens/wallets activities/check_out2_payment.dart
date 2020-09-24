import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

import '../cart_screen.dart';
import '../topic_selection.dart';

class CkOutPayme extends StatefulWidget {
  @override
  _CkOutPaymeState createState() => _CkOutPaymeState();
}

class _CkOutPaymeState extends State<CkOutPayme> {
  String cardNumber = "";
  String cardHolderName = "";
  String expiryDate = "";
  String cvv = "";
  bool showBack = false;

  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        titleSpacing: -20.0,
        leading: Icon(
          Icons.tv,
          color: Colors.orangeAccent,
        ),
        backgroundColor: Color(0xFF21012B),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [Text("Purple"), Text("Room", style:TextStyle(color: Colors.orange))],
          ),
        ),
        actions: [
          Icon(Icons.notifications_none),
          // SizedBox(width: 5),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Checkout",
                        style: TextStyle(color: Colors.white,fontSize: 15),
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
                  padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Summary", style: TextStyle(color: Colors.orange)),
                      Text("Payment", style: TextStyle(color: Colors.orange)),
                      Text("CheckOut", style: TextStyle(color: Colors.orange)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF21012B),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: Icon(Icons.format_paint, color: Colors.orange),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF21012B),
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: Icon(Icons.account_balance_wallet,
                              color: Colors.orange),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.orange,
                            ),
                          ),
                          child: Icon(Icons.child_friendly, color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Name on Card",
                           enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.orange),
                         ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                        ),
                          hintStyle: TextStyle(color:Colors.grey, fontSize: 12)
                          ),
                        // maxLength: 19,
                        onChanged: (value) {
                          setState(() {
                            cardNumber = value;
                          });
                        },
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Card Number", 
                         hintStyle: TextStyle(color:Colors.grey, fontSize: 12),
                        enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.orange),
                           
                         ),
                         focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                        )
                         ),
                        
                        onChanged: (value) {
                          setState(() {
                            cardHolderName = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: TextFormField(
                                style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(hintText: "Expiry Date",
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.orange),
                               ),
                                focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                        ),

                                hintStyle: TextStyle(color:Colors.grey, fontSize: 12)),
                              // maxLength: 5,
                              onChanged: (value) {
                                setState(() {
                                  expiryDate = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 30,),
                           Expanded(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: "CVV", 
                        enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.orange),
                       ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange),
                        ),
                         hintStyle: TextStyle(color:Colors.grey, fontSize: 12)),
                        // maxLength: 3,style: TextStyle(color: Colors.white),
                        onChanged: (value) {
                          setState(() {
                              cvv = value;
                          });
                        },
                        focusNode: _focusNode,
                      ),
                           ),


                        ],
                      ),
                    ),
                   
                   SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Save this Card Details",  style: TextStyle(color: Colors.white)),
                                )
                                // SizedBox(height:),
                            // Center(
                            //   child: Text("Save Card details",
                            //       style: TextStyle(color: Colors.white)),
                            // ),
                            // SizedBox(width: 150),
                            // Container(
                            //   height: 40,
                            //   width: 80,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            //     color: Color(0xFFFF8F00),
                            //   ),
                            // )
                          ]),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF21012B),
                                border: Border.all(
                                  color: Colors.orange,
                                ),
                              ),
                              child: Center(
                                  child: Text("Back",
                                      style: TextStyle(color: Colors.white))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFF8F00),
                                border: Border.all(
                                  color: Colors.orange,
                                ),
                              ),
                              child: Center(
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CartScreen()));
                                      },
                                      child: Text("Pay"))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
