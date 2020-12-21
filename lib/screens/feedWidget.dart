import 'package:facebookpage/screens/largeButton.dart';
import 'package:facebookpage/screens/smallButton.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  final String userImage;
  final String userName;
  final String textFeed;
  final String timeFeed;
  final String imageFeed;

  const FeedWidget(
      {Key key,
      this.userImage,
      this.userName,
      this.textFeed,
      this.timeFeed,
      this.imageFeed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 3),
                        Row(
                          children: <Widget>[
                            Text(timeFeed,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey)),
                            SizedBox(width: 3),
                            Icon(Icons.history, color: Colors.grey, size: 15)
                          ],
                        )
                      ],
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.indigo, size: 20),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 25),
            Text(
              textFeed,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            SizedBox(height: 25),
            imageFeed != ''
                ? Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(imageFeed), fit: BoxFit.cover)),
                  )
                : Container(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SmallButton(
                      color: Colors.blue,
                      iconData: Icons.thumb_up,
                    ),
                    Transform.translate(
                      offset: Offset(-7, 0),
                      child: SmallButton(
                        color: Colors.red,
                        iconData: Icons.favorite,
                      ),
                    ),
                    SizedBox(width: 3),
                    Text("1.04k",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Text("75 comments",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LargeButton(
                  iconData: Icons.thumb_up,
                  label: "Like",
                  color: Colors.blue,
                ),
                LargeButton(
                  iconData: Icons.chat,
                  label: "Comment",
                  color: Colors.grey,
                ),
                LargeButton(
                  iconData: Icons.share,
                  label: "Share",
                  color: Colors.grey,
                )
              ],
            )
          ],
        ));
  }
}
