import 'package:flutter/material.dart';
import 'package:purple_room/Screens/topic_selection.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.notifications_none),
          SizedBox(width: 10),
          GestureDetector(
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TopicSelection()));
            },
            child: Icon(Icons.apps)),
        ],
      ),
    );
  }
}