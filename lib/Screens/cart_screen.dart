import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/Screens/topic_selection.dart';
import 'package:purple_room/Screens/wallets%20activities/cart_confirmation.dart';
// import 'package:purple_room/Screens/wallets%20activities/cart_confirmation.dart';
// import 'package:purple_room/Screens/wallets%20activities/cart_confirmation.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TopicSelection()));
                },
                child: Icon(Icons.apps)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CheckOut",
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
                padding: const EdgeInsets.only(left:30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 30,
                      width: 60,
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
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFF8F00),
                        border: Border.all(
                          color: Colors.orange,
                        ),
                      ),
                      child: Icon(Icons.account_balance_wallet,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF21012B),
                        border: Border.all(
                          color: Colors.orange,
                        ),
                      ),
                      child: Icon(Icons.child_friendly, color: Colors.orange),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Wallet Details",
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                   
              gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.white.withOpacity(0.7),
                      Colors.blue,
                      Colors.white
                    ],
                  ),
          
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ACCOUNT BALANCE",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "N105,000.00",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tranfer",
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                _bottomSheet(context);
                              },
                              child: Text(
                                "Fund Account",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          WalletConfirmation()));
                                },
                                child: Text("Pay"))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                CreditCard(
                  cardNumber: "5450 7879 4864 7854",
                  cardExpiry: "10/25",
                  cardHolderName: "Card Holder",
                  cvv: "456",
                  bankName: "GT Bank",
                  cardType: CardType
                      .masterCard, // Optional if you want to override Card Type
                  showBackSide: false,
                  frontBackground: CardBackgrounds.black,
                  backBackground: CardBackgrounds.white,
                  showShadow: false,
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange,
                            )),
                        GestureDetector(
                          onTap: () {
                            bottomSheet(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Use new card",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              bottomSheet(context);
                            },
                            child: Center(
                                child: Text("fund acount",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                          ),
                        )
                      ]),
                )
              ],
            ),
          );
        });
  }

  bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Card Number"),
                        maxLength: 19,
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
                        decoration: InputDecoration(hintText: "Card Expiry"),
                        maxLength: 5,
                        onChanged: (value) {
                          setState(() {
                            expiryDate = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration:
                            InputDecoration(hintText: "Card Holder Name"),
                        onChanged: (value) {
                          setState(() {
                            cardHolderName = value;
                          });
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: "CVV"),
                            maxLength: 3,
                            onChanged: (value) {
                              setState(() {
                                cvv = value;
                              });
                            },
                            focusNode: _focusNode,
                          ),
                        ),
                        Row(
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
                              GestureDetector(
                                onTap: () {
                                  bottomSheet(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Use saved card",
                                      style: TextStyle(color: Colors.black)),
                                ),
                              ),
                              SizedBox(width: 150),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFF8F00),
                                ),
                                child: Center(
                                    child: Text("fund acount",
                                        style: TextStyle(
                                            color: Color(0xFF21012B),
                                            fontWeight: FontWeight.bold))),
                              )
                            ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
