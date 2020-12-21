import 'package:facebookpage/screens/feedWidget.dart';
import 'package:flutter/material.dart';

class DetailPage1 extends StatelessWidget {

final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const DetailPage1({Key key, this.userImage, this.userName, this.textFeed, this.timeFeed, this.imageFeed}) : super(key: key);

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
            userName: "Maria",
            userImage: "assets/images/mixed_roses.jpg",
            textFeed:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. #books #nature #Dogs",
            imageFeed: "assets/images/puppy.jpg",
            timeFeed: "30 mins",
          ),
        ));
  }
}
