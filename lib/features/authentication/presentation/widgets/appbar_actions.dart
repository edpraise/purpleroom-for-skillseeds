import 'package:flutter/material.dart';

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
          Icon(Icons.apps),
        ],
      ),
    );
  }
}