import 'package:flutter/material.dart';
// import 'package:purple_room/Screens/counsellor_profile.dart';
// import 'package:purple_room/Screens/home4counselling.dart';
import 'package:purple_room/features/authentication/presentation/pages/login.dart';
// import 'package:purple_room/features/authentication/presentation/widgets/bottom_navigation%20_mainScreen.dart';
// import 'package:purple_room/Screens/login.dart';
// import 'package:purple_room/features/authentication/presentation/pages/registar.dart';

// import 'features/authentication/presentation/pages/forgot_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
