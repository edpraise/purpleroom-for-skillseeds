import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class PersonalWallet extends StatefulWidget {
  @override
  _PersonalWalletState createState() => _PersonalWalletState();
}

class _PersonalWalletState extends State<PersonalWallet> {
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
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
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
                              Text(
                                "Fund Account",
                                style: TextStyle(color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Transaction History",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("45,000", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("10th jun, 2020",
                              style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                      Column(
                        children: [
                          Text("Completed",
                              style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("status", style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                      Column(
                        children: [
                          Text("5mins", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("Audio Call",
                              style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("45,000", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("10th jun, 2020",
                              style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                      Column(
                        children: [
                          Text("Completed",
                              style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("status", style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                      Column(
                        children: [
                          Text("5mins", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("Audio Call",
                              style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("45,000", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                            Text("10th jun, 2020",
                                style: TextStyle(color: Colors.white, fontSize: 10))
                          ],
                        ),
                        Column(
                          children: [
                            Text("Completed",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text("status", style: TextStyle(color: Colors.white, fontSize: 10))
                          ],
                        ),
                        Column(
                          children: [
                            Text("5mins", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text("Audio Call",
                                style: TextStyle(color: Colors.white, fontSize: 10)),
                                
                          ],
                        ),
                      ],
                    ),
                ),
                                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("45,000", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("10th jun, 2020",
                              style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                      Column(
                        children: [
                          Text("Completed",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("status", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        children: [
                          Text("5mins", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("Audio Call",
                              style: TextStyle(color: Colors.white, fontSize: 10)),
                              
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("45,000", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
                          Text("10th jun, 2020",
                              style: TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                      Column(
                        children: [
                          Text("Completed",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("status", style: TextStyle(color: Colors.white, fontSize: 10, ))
                        ],
                      ),
                      Column(
                        children: [
                          Text("5mins", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("Audio Call",
                              style: TextStyle(color: Colors.white, fontSize: 10)),
                              
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
