import 'package:flutter/material.dart';
import 'package:purple_room/features/authentication/presentation/widgets/appbar_actions.dart';
import 'package:purple_room/features/authentication/presentation/widgets/cart_widget.dart';
import 'package:purple_room/features/authentication/presentation/widgets/search_bar_widget.dart';


class GiftBook extends StatefulWidget {
  @override
  _GiftBookState createState() => _GiftBookState();
}

class _GiftBookState extends State<GiftBook> {
  List<Map<String, dynamic>> cartStuff = [
    {
      "imageUrl": "assets/images/a.jpg",
      "title": "The Heart of Hell",
      "author": "Mitch Weiss",
      "rating": Icon(Icons.star),
      "desc": "the untold story of courage and sacrifice"
    },
    {
      "imageUrl": "assets/images/hb.jpg",
      "title": "Adreness 1994",
      "author": "Anthony Beevor",
      "rating": Icon(Icons.star),
      "desc": "f#1 internation bestseller and award"
    },
    {
      "imageUrl": "assets/images/ju.jpg",
      "title": "War on the Gothic Line",
      "author": "christian jegging",
      "rating": Icon(Icons.star),
      "desc": "the the eyes of men and"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21012B),
        appBar: AppBar(
          backgroundColor: Color(0xFF21012B),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Ebooks",
          ),
          actions: [
            AppBarActions()
          ],
        ),
        body: Column(
          children: [
            Search(),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                      ),
                  itemCount: cartStuff.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CartWidget(
                        author: cartStuff[i]["author"],
                        imageUrl: cartStuff[i]["imageUrl"],
                        desc: cartStuff[i]["desc"],
                        rating: cartStuff[i]["Icon"],
                        title: cartStuff[i]["title"],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}


