import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:purple_room/features/authentication/presentation/pages/registar.dart';
import 'package:purple_room/features/authentication/presentation/widgets/bottom_navigation%20_mainScreen.dart';
import 'package:purple_room/features/authentication/presentation/widgets/custom_widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _firstNameController;
  TextEditingController _paswordController;
  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _paswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          child: Stack(

            children: [
              Container(

                padding: EdgeInsets.all(55.0),
                height: MediaQuery.of(context).size.height / 2.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/homeback.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF21012B),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xFF21012B).withOpacity(0.7),
                      Color(0xFF21012B),
                      Color(0xFF21012B),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height/1.12,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(child: Container()),
                              Icon(
                                Icons.tv,
                                color: Colors.orangeAccent,
                                size: 30,
                              ),
                              // SizedBox(
                              //   width: 20,
                              // ),
                              Text("Purple",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Room",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Expanded(child: Container()),
                            ],
                          ),
                        ),
                        CustomInput(
                            validator: (value) {},
                            controller: _firstNameController,
                            obscureText: false,
                            label: "EMAIL",
                            hint: "email here"),
                        CustomInput(
                            validator: (value) {},
                            controller: _paswordController,
                            obscureText: true,
                            label: "PASSWORD",
                            hint: "password here"
                            
                            ),
                            SizedBox(height: 20),
                        new FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 125),
                            color: Color(0xFFFF8F00),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MainScreenHolder()));
                            },
                            child: new Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold))),
                        Row(
                          children: [
                            Container(
                              color: Colors.grey,
                              height: 1,
                              width: MediaQuery.of(context).size.width / 3.5,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Social Logins",
                              style: TextStyle(color: Colors.white,),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              color: Colors.grey,
                              height: 1,
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color:Color(0xFFFF8F00),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton(
                                icon: Icon(MaterialCommunityIcons.google),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(width: 30),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                 color:Color(0xFFFF8F00),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton(
                                icon: Icon(MaterialCommunityIcons.facebook),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Dont have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Registar()));
                            },
                            child: Text("REGISTER",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
