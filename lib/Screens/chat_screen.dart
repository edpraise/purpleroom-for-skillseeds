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
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Message",
                    style: TextStyle(color: Colors.white),
                  ),
                  CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/images/bls.jpg'),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 2,
                    // elevation: 5,
                    radius: 20,
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
                          ExactAssetImage("assets/images/bls.jpg")
                          )
                        )
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
                                  style: TextStyle(color: Colors.white),
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
