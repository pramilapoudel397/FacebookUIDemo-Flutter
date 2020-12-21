import 'package:facebookpage/screens/feedWidget.dart';
import 'package:flutter/material.dart';

class DetailPage4 extends StatelessWidget {
  final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const DetailPage4(
      {Key key,
      this.userImage,
      this.userName,
      this.textFeed,
      this.timeFeed,
      this.imageFeed})
      : super(key: key);

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
            userName: "Jhoana",
            userImage: "assets/images/roses.jpg",
            textFeed:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
            imageFeed: "assets/images/istockphoto.jpg",
            timeFeed: "1 day",
          ),
        ));
  }
}
