import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class VoiceCall extends StatefulWidget {
  @override
  _VoiceCallState createState() => _VoiceCallState();
}

class _VoiceCallState extends State<VoiceCall> {
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
               child: Column(
                 children: [
                   Center(child: Text("Please note: You have 5hours allowance", style: TextStyle(color:Colors.white)
                   )
                   ),
                   Text(" based on your credit balance", style: TextStyle(color:Colors.white))
                 ],
               ),
             ),
             SizedBox(height: 30,),
             CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/images/bls.jpg'),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 3,
                    elevation: 5,
                    radius: 70,
                  ),
                  SizedBox(height:10),
                  Text("Tasun Prasad", style: TextStyle(color:Colors.white),),
                  SizedBox(height: 10),

                  Text("Calling...", style: TextStyle(color:Colors.orange, fontSize: 10), ),
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
                            // borderRadius: BorderRadius.circular(40),
                            shape: BoxShape.circle,
                            color: Colors.green
                          ),
                          child: Icon(Icons.call,size: 50, color: Colors.white)),
                        Icon(Icons.mic_off, size: 70,color: Colors.white),
                         Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(40),
                          color: Colors.redAccent[700]
                        ),
                        child: Icon(Icons.call_end,size: 60, color: Colors.white)),
                      ],
                    ),
                  )
          ],
        ),
      ),
      
    );
  }
}