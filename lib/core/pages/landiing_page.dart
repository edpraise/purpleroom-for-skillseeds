import 'dart:async';

import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/pages/login.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:5),()=>LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => LoginPage()),
  (Route<dynamic> route) => false,
);
      },
      child: Scaffold(
        backgroundColor: Color(0xFF21012B),
        body: Center(
            child: Image.asset(
          'assets/images/p.png',
          width: MediaQuery.of(context).size.width / 2,
        )),
      ),
    );
  }
}
