//import 'package:facebookpage/details/detailPage1.dart';
import 'package:facebookpage/details/detailPage1.dart';
import 'package:facebookpage/details/detailPage2.dart';
import 'package:facebookpage/details/detailPage3.dart';
import 'package:facebookpage/details/detailPage4.dart';
import 'package:facebookpage/screens/feedWidget.dart';
import 'package:facebookpage/screens/headerWidget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWidget(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                        ),
                      ),
                      SizedBox(height: 35),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailPage1(userName: "Maria"),
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: FeedWidget(
                              userName: "Maria",
                              userImage: "assets/images/mixed_roses.jpg",
                              textFeed:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. #books #nature #Dogs",
                              imageFeed: "assets/images/puppy.jpg",
                              timeFeed: "30 mins",
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailPage2(userName: "Sarah"),
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: FeedWidget(
                              userName: "Sarah",
                              userImage: "assets/images/fun.jpg",
                              textFeed:
                                  "Dogs are not our whole life, but they make our lives whole.",
                              imageFeed: "assets/images/cute_dog.jpg",
                              timeFeed: "1 hr",
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailPage3(userName: "John",),
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: FeedWidget(
                              userName: "John",
                              userImage: "assets/images/fun_pup.jpg",
                              textFeed:
                                  "Caring for Earth is not a hippie thing, it is a survival thing",
                              imageFeed: "assets/images/save_nature.jpeg",
                              timeFeed: "2 hr",
                            ),
                            
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailPage4(userName: "Jhoana",),
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 8),
                            child: FeedWidget(
                              userName: "Jhoana",
                              userImage: "assets/images/roses.jpg",
                              textFeed:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                              imageFeed: "assets/images/istockphoto.jpg",
                              timeFeed: "1 day",
                              
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),);
    
  }
}
