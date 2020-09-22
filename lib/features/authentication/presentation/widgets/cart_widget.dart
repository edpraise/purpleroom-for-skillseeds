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
        Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
              width: 450,
              height:230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // padding: EdgeInsets.all(4),
              child: Center(
                child: Container(
                    width: 450,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imageUrl),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                ),
              )),
                  ),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white,fontSize: 20)),
            SizedBox(height: 10),
            Text(author, style: TextStyle(color: Colors.white, fontSize: 12)),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size:16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size:16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size:16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size:16,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              desc,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Container(
                  child: RaisedButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: const Text('Add to cart',
                        style: TextStyle(fontSize: 15,color: Colors.white)),
                  ),
                  
                ),
                SizedBox(width: 10,),
                Container(
                  child: RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child:
                    const Text('Buy   Now', style: TextStyle(fontSize: 15)),
            ),
                )
              ],
            ),
            
          ],
        )
      ],
    );
  }
}
