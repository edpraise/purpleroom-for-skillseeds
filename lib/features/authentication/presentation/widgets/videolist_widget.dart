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
            width: 140,
            height:200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // padding: EdgeInsets.all(4),
            child: Center(
              child: Container(
                width: 140,
                height: 250,
                decoration: BoxDecoration(
                  // border: Bord,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageUrl, ),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
        ),
      ],
            );
  }
  }