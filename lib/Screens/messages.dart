import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {

  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xFF21012B),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF21012B),
          title: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                CircularProfileAvatar(
                  '',
                  child: Image.asset('assets/images/bls.jpg'),
                 
                  radius: 20,
                ),
                Text("Tory brown", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w100))
              ],
            ),
          ),
        ),

        body: Column(
          children: [
            Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                        color: Colors.blueGrey
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0, top: 20),
                        child: Text("""hello Mr, how was your night, hope all is well with you""", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Text("Nov 4, 18:9", style: TextStyle(color: Colors.blueGrey[700], ),textAlign: TextAlign.end,),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width/1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        color: Colors.orange
                      ),
                       child: Padding(
                         padding: const EdgeInsets.only(left:20.0, top:20),
                         child: Text("hello Mr, how was your night, hope all is well with you ", style: TextStyle(color: Colors.white)),
                       ),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Text("Nov 4, 18:9", style: TextStyle(color: Colors.blueGrey[700], ),textAlign: TextAlign.end,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                     Padding(
                       padding: const EdgeInsets.only(left:18.0),
                       child: Container(

      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                image: DecorationImage(

                  image: AssetImage(
                        'assets/images/4.jpg'),
                  fit: BoxFit.fill,
                ),
      ),
    ),
                     )
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Text("Nov 4, 18:9", style: TextStyle(color: Colors.blueGrey[700], ),textAlign: TextAlign.center),
                  ), 

                    Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                        color: Colors.orange
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(child: Text("hello Mr, how was your night, hope all is well with you ",style: TextStyle(color: Colors.white),)),
                      ),

                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: Text("Nov 4, 18:9", style: TextStyle(color: Colors.blueGrey[700], ),textAlign: TextAlign.center),
                  ),
                  SizedBox(height:170),
                   Divider(
                  color: Colors.grey,
                ),
      
                ],
                
               
                ),
               
              ),
            ),
                 Padding(
                   padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom ),
                   child: TextField(
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.attach_file,color: Colors.grey),
    suffixIcon: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(Icons.arrow_forward, color: Colors.black)),
    ),
    border: InputBorder.none,
    hintText: 'write your message',
    hintStyle: TextStyle(color: Colors.grey)
  ),
),
                 )
          ],
        ),
        


       
        );
  }
}
