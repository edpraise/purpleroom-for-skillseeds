import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      body: Container(
        child: Column(
          children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Center(
                    child: CircularProfileAvatar(
                        '',
                        child: Image.asset('assets/images/bls.jpg'),
                        borderColor: Color(0xFFFF8F00),
                        borderWidth: 2,
                        elevation: 5,
                        radius: 80,
                      ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tasun", style: TextStyle(fontSize: 15, color: Colors.white),),
                    SizedBox(width: 5,),
                    Text("Prasad", style: TextStyle(fontSize: 15, color: Colors.white),)
                  ],
                ),
                Text("Premium", style: TextStyle(fontSize: 15, color: Color(0xFFFF8F00)),),

                Container(
                  child: Expanded(child: ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.person, color: Colors.white),
      title: Text('Account', style: TextStyle(color:Colors.white, fontSize: 15)),
    ),
    Divider(
      color: Colors.white,
    ),
    ListTile(
      leading: Icon(Icons.notifications, color: Colors.white), 
      title: Text('Notifications',style: TextStyle(color:Colors.white, fontSize: 15)),
    ),
    Divider(color: Colors.white,),
    ListTile(
      leading: Icon(Icons.settings, color: Colors.white),
      title: Text('Settings', style: TextStyle(color:Colors.white, fontSize: 15)),
    ),
    Divider(color: Colors.white,),
    ListTile(
      leading: Icon(Icons.info, color: Colors.white),
      title: Text('Help',style: TextStyle(color:Colors.white, fontSize: 15)),
    ),
    Divider(color: Colors.white,),
    ListTile(
      leading: Icon(Icons.exit_to_app, color: Colors.white),
      title: Text('Logout',style: TextStyle(color:Colors.white, fontSize: 15)),
    ),
  ],
)
),
                )   
          ],

        ),
        
      ),
    );
  }
}