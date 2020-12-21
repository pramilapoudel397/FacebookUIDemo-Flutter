
import 'package:facebookpage/screens/homeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(FacebookPage());
}
class FacebookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:HomeWidget(),
     //home: FeedWidget(),
    );
  }
}