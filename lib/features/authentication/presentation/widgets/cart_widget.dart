import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final String imageUrl, title, desc, author, rating;
  const CartWidget({
    Key key,
    this.imageUrl,
    this.title,
    this.desc,
    this.author,
    this.rating,
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
            )),
        SizedBox(width: 40),
        Column(
          children: [
            Text(title, style: TextStyle(color: Colors.white)),
            SizedBox(height: 2),
            Text(author, style: TextStyle(color: Colors.white, fontSize: 12)),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orangeAccent,
                  size: 12,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 12,
                ),
              ],
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(height: 5),
            Wrap(
              spacing: 2.0, // gap between adjacent chips
              runSpacing: 2.0, // gap between lines
              direction: Axis.vertical,
              children: [
                Container(
                  child: RaisedButton(
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: const Text('Add to cart',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child:
                      const Text('Buy    Now', style: TextStyle(fontSize: 15)),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
