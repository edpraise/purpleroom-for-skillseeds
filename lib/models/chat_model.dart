import 'contact_model.dart';

class ChatModel {
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final PeopleModel people;
  ChatModel({this.isTyping, this.lastMessage, this.lastMessageTime, this.people});

  static List<ChatModel>  list= [
    ChatModel(
      isTyping: true, 
      lastMessage: "hello", 
      lastMessageTime:"2:30pm",
       people: PeopleModel(friend: "Marisa Fiar") ,
    ),
    ChatModel(
      isTyping: true, 
      lastMessage: "hello", 
      lastMessageTime:"2:30pm",
       people: PeopleModel(friend:"kenneth Erikson" ) ,
    ),
     ChatModel(
      isTyping: true, 
      lastMessage: "hello", 
      lastMessageTime:"2:30pm",
       people: PeopleModel(friend:"mitchel Lake" ) ,
    ),
     ChatModel(
      isTyping: true, 
      lastMessage: "hello", 
      lastMessageTime:"2:30pm",
       people: PeopleModel(friend:"lennet Strand" ) ,
    ),
     ChatModel(
      isTyping: true, 
      lastMessage: "hello", 
      lastMessageTime:"2:30pm",
       people: PeopleModel(friend:"Joyce Tuck" ) ,
    ),
     ChatModel(
      isTyping: true, 
      lastMessage: "hello", 
      lastMessageTime:"2:30pm",
       people: PeopleModel(friend:"Troy brown" ) ,
    ),
  ];
}
