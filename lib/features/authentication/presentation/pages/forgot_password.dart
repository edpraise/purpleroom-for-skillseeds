import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/widgets/custom_widgets.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        backgroundColor: Color(0xFF21012B),
        leading: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        title: Text(
          "BACK",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/vatar.jpg',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text("PURPLE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            width: 2,
                          ),
                          Text("ROOM",
                              style: TextStyle(
                                color: Color(0xFFFF8F00),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("FORGOT",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("PASSWORD?",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
            Form(
              key: _formState,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomInput(
                  obscureText: false,
                    validator: (value) {},
                    controller: _emailController,
                    label: "EMAIL",
                    hint: "Email here"),
              ),
            ),
            new FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 125),
                color: Color(0xFFFF8F00),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                child: new Text('SEND EMAIL', style: TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
