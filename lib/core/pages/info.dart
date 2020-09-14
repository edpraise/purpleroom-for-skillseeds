import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFF21012B),
       body: SingleChildScrollView(
                child: Container(
           child:Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(

                   children: [
                     Icon(Icons.info, color: Colors.orange),
                     SizedBox(width: 10),
                     Text("About", style: TextStyle(color: Colors.white)),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Container(
                     child: Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.", style: TextStyle(color: Colors.white),))
                 ),
                 SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Icon(Icons.public, color: Colors.orange,),
                       SizedBox(width: 10,),
                       Container(child: Text("Language",style: TextStyle(color: Colors.white))),

                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Container(
                     child: Text("English, Hause, Igbo", style: TextStyle(color: Colors.white),))
                 ),
                //  Padding(
                //    padding: const EdgeInsets.all(15.0),
                //    child: Container(child: Text( "English, Hause, Igbo", style: TextStyle(color: Colors.white))),
                //  ),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Icon(Icons.today, color: Colors.orange),
                     SizedBox(width: 10),
                     Text("Availability", style: TextStyle(color: Colors.white)),
                     SizedBox(height: 5,),
                     Text("9am-5pm EST",style: TextStyle(color: Colors.white))
                   ],
                 )
               ],
               
             ),
           )
         ),
       ),
      
    );
  }
}