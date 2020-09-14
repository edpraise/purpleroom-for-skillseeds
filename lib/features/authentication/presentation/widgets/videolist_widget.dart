import 'package:flutter/material.dart';
class VideoList extends StatelessWidget {
  final String imageUrl ;
  const VideoList({
    Key key,
    this.imageUrl,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 150,
            height:150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // padding: EdgeInsets.all(4),
            child: Center(
              child: Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(imageUrl),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        ),
      ],
            );
  }
  }