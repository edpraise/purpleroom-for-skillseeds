import 'contact_model.dart';

class ChatModel {
  final String color;
  final String imageUrl;
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final PeopleModel people;
  final String numberMess;
  ChatModel(
      {this.isTyping,
      this.lastMessage,
      this.lastMessageTime,
      this.people,
      this.imageUrl,
      this.numberMess,
      this.color});
      

  static List<ChatModel> list = [
    ChatModel(
      color: "Colors.orange",
        imageUrl: "assets/images/1.jpg",
        isTyping: true,
        lastMessage: "Designed with not only..",
        lastMessageTime: "1:40",
        people: PeopleModel(friend: "Marisa Fiar"),
        numberMess: "4"),
    ChatModel(
      color: "Colors.orange",
      imageUrl: "assets/images/2.jpg",
      isTyping: true,
      lastMessage: "Ux designer dont..",
      lastMessageTime: "4:10",
      numberMess: "2",
      people: PeopleModel(friend: "kenneth Erikson"),
    ),
    ChatModel(
      color: "Colors.purple",
        imageUrl: "assets/images/3.jpg",
        isTyping: true,
        lastMessage: "theres no such defination for...",
        lastMessageTime: "2:30",
        people: PeopleModel(friend: "mitchel Lake"),
        numberMess: ""),
    ChatModel(
      color: "Colors.purple",
      imageUrl: "assets/images/4.jpg",
      isTyping: true,
      lastMessage: "design encompases the entire..",
      lastMessageTime: "2:30",
      people: PeopleModel(friend: "lennet Strand"),
      numberMess: "",
    ),
    ChatModel(
      color: "Colors.purple",
      imageUrl: "assets/images/5.jpg",
      isTyping: true,
      lastMessage: "thats also why most ux design..",
      lastMessageTime: "2:00",
      people: PeopleModel(friend: "Joyce Tuck"),
      numberMess: "",
    ),
     ChatModel(
      color: "Colors.purple",
      imageUrl: "assets/images/5.jpg",
      isTyping: true,
      lastMessage: "i love being a developer.",
      lastMessageTime: "3:00",
      people: PeopleModel(friend: "James fringe"),
      numberMess: "",
    ),
  ];
}
