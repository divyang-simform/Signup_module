import 'package:flutter/material.dart';

class Otherloginpage extends StatefulWidget {
  const Otherloginpage({Key? key}) : super(key: key);

  @override
  _OtherloginpageState createState() => _OtherloginpageState();
}

class _OtherloginpageState extends State<Otherloginpage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 1,
          onPressed: () {},
          child:
              Image.asset("asset/image/Google_Plus_icon_(2015-2019).svg.png"),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: FloatingActionButton(
            heroTag: 2,
            onPressed: () {},
            child: Image.asset("asset/image/834722_facebook_icon.png"),
          ),
        ),
        FloatingActionButton(
          heroTag: 3,
          onPressed: () {},
          child: Image.asset("asset/image/294709_circle_twitter_icon.png"),
        ),
      ],
    );
  }
}
