import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import'package:flutter/material.dart';
class WalletConfirmation extends StatefulWidget {
  @override
  _WalletConfirmationState createState() => _WalletConfirmationState();
}

class _WalletConfirmationState extends State<WalletConfirmation> {
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
       body: Column(
         children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
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
                    child: Icon(Icons.check, color: Color(0xFF00ff00), size: 14),
                    borderColor: Color(0xFF00ff00),
                    borderWidth: 2,
                    backgroundColor: Color(0xFF21012B),
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
             Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFF21012B),
                      borderRadius: BorderRadius.circular(10),
                    
                    ),
                    child: Image.asset('assets/images/su.jpg', fit: BoxFit.contain,)),
                  
                    ),
            
            SizedBox(
              height: 10,
            ),
       
           Container(
             height: 30,
             width: 100,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.orange),
             child: Center(child: Text("Done", style: TextStyle(color:Colors.black, fontSize:15))))
         ],
       ),
       
      
    );
  }
}