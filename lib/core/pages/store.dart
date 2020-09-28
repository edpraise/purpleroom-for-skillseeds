import 'package:flutter/material.dart';
import 'package:purple_room/core/pages/audioScreen.dart';
import 'package:purple_room/core/pages/ebookScreen.dart';
import 'package:purple_room/features/authentication/presentation/widgets/videolist_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  List<Map<String, dynamic>> videoList = [
    {
      "imageUrl": "assets/images/ju.jpg",
    },
    {
      "imageUrl": "assets/images/hb.jpg",
    },
    {
      "imageUrl": "assets/images/ju.jpg",
    }
  ];

  int _current = 0;
  List imageList = [
    'assets/images/bx1.png',
    'assets/images/bx2.jpg',
    'assets/images/bx3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21012B),
      body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      
                        height: 220,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        onPageChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        items: imageList.map((imgSrc) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Image.asset(imgSrc, fit: BoxFit.fill)
                            );
                          });
                        }).toList()),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Videos", style: TextStyle(color: Colors.white)),
                          Text("See all", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    Container(
                        height: 200,
                        // width: 250,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.transparent,
                                ),
                            itemCount: videoList.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  width: 150,
                                  child: VideoList(
                                    imageUrl: videoList[i]["imageUrl"],
                                  ),
                                ),
                              );
                            })),
                    SizedBox(height:5),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Physical Products",
                              style: TextStyle(color: Colors.white)),
                          Text(
                            "see all",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                   Container(
                     height: 100,
                     child: CarouselSlider(
                            height: 150,
                            initialPage: 0,
                            // enlargeCenterPage: true,
                            onPageChanged: (index) {
                              setState(() {
                                _current = index;
                              });
                            },
                            items: imageList.map((imgSrc) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                     width: MediaQuery.of(context).size.width/1.35,
                     margin: EdgeInsets.symmetric(horizontal: 10),
                     decoration: BoxDecoration(
                       color: Colors.grey,
                     ),
                     child: Image.asset(imgSrc, fit: BoxFit.fill)
                                );
                              });
                            }).toList()
                            ),
                   ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("Audio", style: TextStyle(color: Colors.white, fontSize: 15),),


                                GestureDetector(
                                  onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AudioScreen()));
                                  },
                                  child: Text("see all", style: TextStyle(color: Colors.white, fontSize: 15),)),
                                
                              ],
                            ),
                            
                            
                          ),
                        SizedBox(height: 10),
                         Container(
                           height: 150,
                           child: ListView.separated(
                             shrinkWrap: true,
                               scrollDirection: Axis.horizontal,
                               separatorBuilder: (context, index) => Divider(
                                     color: Colors.transparent,
                                   ),
                               itemCount: videoList.length,
                               itemBuilder: (context, i) {
                                 return Padding(
                                   padding: const EdgeInsets.all(4.0),
                                   child: Container(
                                     width: 150,
                                     child: VideoList(
                                       imageUrl: videoList[i]["imageUrl"],
                                     ),
                                   ),
                                 );
                               }),
                         ),

                             SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text("Ebook", style: TextStyle(color: Colors.white, fontSize: 15),),


                                GestureDetector(
                                  onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => EbookScreen()));
                                  },
                                  child: Text("see all", style: TextStyle(color: Colors.white, fontSize: 15),)),
                                
                              ],
                            ),
                            
                            
                          ),
                        SizedBox(height: 10),
                         Container(
                           height:150,
                            child: ListView.separated(
                             shrinkWrap: true,
                               scrollDirection: Axis.horizontal,
                               separatorBuilder: (context, index) => Divider(
                                     color: Colors.transparent,
                                   ),
                               itemCount: videoList.length,
                               itemBuilder: (context, i) {
                                 return Padding(
                                   padding: const EdgeInsets.all(4.0),
                                   child: Container(
                                     width: 150,
                                     child: VideoList(
                                       imageUrl: videoList[i]["imageUrl"],
                                     ),
                                   ),
                                 );
                               }),
                         ),
                  ]),
      ),
    );
  }
}
