import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(

        // of:true,
         backgroundColor: Color(0xFF21012B),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Center(child: Text("Please note: You have 5hours allowance based on your balance", style: TextStyle(color:Colors.white))),
             ),
             CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/images/bls.jpg'),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 2,
                    elevation: 5,
                    radius: 40,
                  ),
                  SizedBox(height:40),
                  Text("Tasun Prasad", style: TextStyle(color:Colors.white),),
                  Text("calling...", style: TextStyle(color:Colors.orange),),
                  SizedBox(height:40),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.green
                          ),
                          child: Icon(Icons.call,size: 50, color: Colors.white)),
                        Icon(Icons.mic_off, size: 70,color: Colors.white),
                         Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.redAccent[700]
                        ),
                        child: Icon(Icons.call_end,size: 70, color: Colors.white)),
                      ],
                    ),
                  )
          ],
        ),
      ),
      
    );
  }
}