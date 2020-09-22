import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:purple_room/models/chat_model.dart';

import 'messages.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  List<ChatModel> list = ChatModel.list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      appBar: AppBar(
        titleSpacing: -10.0,
        leading: Icon(
          Icons.tv,
          color: Colors.orangeAccent,
        ),
        backgroundColor: Color(0xFF21012B),
        title: Row(
          children: [Text("Purple"), Text("Room", style: TextStyle(color: Colors.orange)),]
        ),
        actions: [
          Icon(Icons.notifications_none),
          // SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.apps),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "All Message",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/images/bls.jpg'),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 2,
                    // elevation: 5,
                    radius: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              // height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Message()));
                      },
                      leading:  Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image:
                          ExactAssetImage(list[index].imageUrl,),fit: BoxFit.cover
                          )
                        )
                        // child: imageUrl,
                      ),
                      title: Text(
                        list[index].people.friend,
                        style: TextStyle(color: Colors.white),
                      ),
                      // subtitle: list[index].isTyping ?
                           subtitle: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  list[index].lastMessage,
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 27),
                                Text(
                                  list[index].lastMessageTime ,
                                  style: TextStyle(color: Colors.white, fontSize: 10),
                                ),
                                list[index].numberMess == "" ? Container() : Container(
                                  height: 15,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Color(0xFFcc7a00)
                                  ),
                                  child: Center(child: Text(list[index].numberMess, style: TextStyle(fontWeight: FontWeight.bold),)),
                                )
                                

                              ],
                            ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
