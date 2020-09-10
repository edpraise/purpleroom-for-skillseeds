import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/widgets/custom_widgets.dart';

class Registar extends StatefulWidget {
  @override
  _RegistarState createState() => _RegistarState();
}

class _RegistarState extends State<Registar> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _firstNameController;
  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
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
        title:
            Text("BACK", style: TextStyle(color: Colors.white, fontSize: 15),),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/user-2.png'),
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  "Add profile picture",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _formState,
                    child: Container(
                      child: Column(
                        children: [
                          CustomInput(
                              validator: (value) {},
                              controller: _firstNameController,
                              label: "FIRST NAME",
                              hint: "First name here"),
                          CustomInput(
                              validator: (value) {},
                              controller: _firstNameController,
                              label: "LAST NAME",
                              hint: "Last name here"),
                          CustomInput(
                              validator: (value) {},
                              controller: _firstNameController,
                              label: "EMAIL",
                              hint: "Email here"),
                          CustomInput(
                              validator: (value) {},
                              controller: _firstNameController,
                              label: "PASSWORD",
                              hint: "password here"),
                          CustomInput(
                              validator: (value) {},
                              controller: _firstNameController,
                              label: "CONFIRM PASSWORD",
                              hint: "Confirm password here"),
                              SizedBox(height: 10,),
                          new FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 125),
                            color: Color(0xFFFF8F00),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                              onPressed: () {}, child: new Text('REGISTER'))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
