import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/widgets/appbar_actions.dart';

class Cprofile extends StatefulWidget {
  @override
  _CprofileState createState() => _CprofileState();
}

class _CprofileState extends State<Cprofile> {
  List<String> imageList = [
    "assets/images/a.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        backgroundColor: Color(0xFF21012B),
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 15),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        actions: [
          AppBarActions(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        CircularProfileAvatar(
                          '',
                          child: Image.asset('assets/images/bls.jpg'),
                          borderColor: Color(0xFFFF8F00),
                          borderWidth: 2,
                          // elevation: 5,
                          radius: 60,
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        new FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            color: Color(0xFFFF8F00),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {},
                            child: new Text('Apply'))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text("David Bruno",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold)),
                          Text("San Fransisco, CA ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text("lorem ipsum madagas.. ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal)),
                          Text("lorem ipsum madagas.. ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
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
            ),
            SingleChildScrollView(
              child: Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: List.generate(
                    9,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/a.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
