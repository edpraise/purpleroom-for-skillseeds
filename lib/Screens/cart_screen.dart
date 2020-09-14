import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        leading: Icon(
          Icons.tv,
          color: Colors.orangeAccent,
        ),
        backgroundColor: Color(0xFF21012B),
        title: Row(
          children: [Text("Purple"), Text("Room")],
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 5),
          Icon(Icons.apps)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    child:
                        Icon(Icons.account_balance_wallet, color: Colors.black),
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
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("Wallet Details", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ACCOUNT BALANCE",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "N105,000.00",
                        style: TextStyle(color: Colors.purple),
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
                            style: TextStyle(color: Colors.purple),
                          ),
                          GestureDetector(
                            onTap: () {
                              _bottomSheet(context);
                            },
                            child: Text(
                              "Fund Account",
                              style: TextStyle(color: Colors.purple),
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
                      child: Center(child: Text("Pay")),
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

  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Container(
            child: CreditCard(
    cardNumber: "5450 7879 4864 7854",
    cardExpiry: "10/25",
    cardHolderName: "Card Holder",
    cvv: "456",
    bankName: "Axis Bank",
    cardType: CardType.masterCard, // Optional if you want to override Card Type
    showBackSide: false,
    frontBackground: CardBackgrounds.black,
    backBackground: CardBackgrounds.white,
    showShadow: true,
),
          );
        });
  }
}
