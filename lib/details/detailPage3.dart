import 'package:facebookpage/screens/feedWidget.dart';
import 'package:flutter/material.dart';

class DetailPage3 extends StatelessWidget {
  final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const DetailPage3(
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
            userName: "John",
            userImage: "assets/images/fun_pup.jpg",
            textFeed:
                "Caring for Earth is not a hippie thing, it is a survival thing",
            imageFeed: "assets/images/save_nature.jpeg",
            timeFeed: "2 hr",
          ),
        ));
  }
}
