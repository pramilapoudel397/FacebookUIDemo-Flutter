import 'package:facebookpage/screens/feedWidget.dart';
import 'package:flutter/material.dart';

class DetailPage2 extends StatelessWidget {

final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const DetailPage2({Key key, this.userImage, this.userName, this.textFeed, this.timeFeed, this.imageFeed}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          title: Text(userName),
        ),
        body: Container(
          child: FeedWidget(
            userName: "Sarah",
            userImage: "assets/images/fun.jpg",
            textFeed:
                "Dogs are not our whole life, but they make our lives whole.",
            imageFeed: "assets/images/cute_dog.jpg",
            timeFeed: "1 hr",
          ),
        ));
  }
}
